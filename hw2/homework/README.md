# homework

## write-up 7

How to profile?


```bash
sort_a repeated : Elapsed execution time: 0.043307 sec
sort_i repeated : Elapsed execution time: 0.039047 sec
sort_p repeated : Elapsed execution time: 0.043365 sec
sort_c repeated : Elapsed execution time: 0.022954 sec
sort_m repeated : Elapsed execution time: 0.032067 sec
sort_f repeated : Elapsed execution time: 0.030694 sec

sort_a repeated : Elapsed execution time: 0.088720 sec
sort_i repeated : Elapsed execution time: 0.082620 sec
sort_p repeated : Elapsed execution time: 0.089706 sec
sort_c repeated : Elapsed execution time: 0.052727 sec
sort_m repeated : Elapsed execution time: 0.044793 sec
sort_f repeated : Elapsed execution time: 0.048354 sec
```

## write-up 6

The trick here is to understand how to use the original
array without overwriting values we'll need in the future
for merging.

Let's take this array `A`:
```
[6, 7, 10, | 4, 5, 9] -> [6, 7, 10], [4, 5, 9]
```
With two separate arrays, the original values are always
available in the copies, so we can overwrite the original.
We start with `left_i` and `right_i` pointing
at the first read values of the array,
copy the smallest one to `A` and increment that pointer.

Using only one temporary array, we need to make a choice:
do we make the left or right half temporary? Does it matter?

Let's try:
```
[6, 7, 10, | 4, 5, 9], [4, 5, 9]
 ^                      ^
left_i                 right_i
a_k
```
The problem is the first comparison: `left_i <\= right_i`,
so `*a_k++ = *right_i**`:
```
[4, 7, 10, | 4, 5, 9], [4, 5, 9]
 ^  ^                      ^
left_i                    right_i
    a_k
```

But now the value pointing pointed to by `left_i` is lost!
The problem is that the `a_k` and `left_i` point at the same
value: but you can think of `a_k` as "write" location and `left_i`
as a read location. They cannot overlap.

So the trick is to put the left in the temporary array:
```
[6, 7, 10, | 4, 5, 9], [6, 7, 10]
 ^           ^          ^
a_k         right_i    left_i
```
Now `a_k` does not overlap with any of the read locations.
So working the example again,
```
[4, 7, 10, | 4, 5, 9], [6, 7, 10]
    ^           ^       ^
   a_k       right_i   left_i
```

But could there be any other potential for overwrites?
No: because the read pointer is always at or ahead of the
write pointer. If `left_i` was always less than `right_i`,
the `a_k` would advance to `right_i` but no further:
the rest of the writes would happen from `right_i` position.

And likewise, if `right_i` was always less than `left_i`,
then `right_i` would always advance ahead of `a_k`.

### performance

At `./sort 100000 10` the performance isn't much better
for the random case (consistently slightly worse in fact
even at higher repeats and a 10x larger array).

```bash
sort_a repeated : Elapsed execution time: 0.048180 sec
sort_i repeated : Elapsed execution time: 0.044179 sec
sort_p repeated : Elapsed execution time: 0.037427 sec
sort_c repeated : Elapsed execution time: 0.025132 sec
sort_m repeated : Elapsed execution time: 0.026123 sec

sort_a repeated : Elapsed execution time: 0.091898 sec
sort_i repeated : Elapsed execution time: 0.087961 sec
sort_p repeated : Elapsed execution time: 0.071978 sec
sort_c repeated : Elapsed execution time: 0.045692 sec
sort_m repeated : Elapsed execution time: 0.044402 sec
```

So let's look into memory usage.

```bash
valgrind --tool=massif --alloc-fn='mem_alloc' ./sort 100000 1
ms_print massif.out.* | grep merge_m
->05.88% (50,004B) 0x10B7CD: merge_m (sort_m.c:60)
->11.10% (100,004B) 0x10B7CD: merge_m (sort_m.c:60)
->19.98% (200,004B) 0x10B7CD: merge_m (sort_m.c:60)
```

```bash
valgrind --tool=massif --alloc-fn='mem_alloc' ./sort 100000 1
ms_print massif.out.* | grep merge_c
->05.55% (50,004B) 0x10AD51: merge_c (sort_c.c:60)
->05.55% (50,004B) 0x10AD60: merge_c (sort_c.c:61)
->09.99% (100,004B) 0x10AD51: merge_c (sort_c.c:60)
->09.99% (100,004B) 0x10AD60: merge_c (sort_c.c:61)
->05.88% (50,004B) 0x10AD60: merge_c (sort_c.c:61)
->16.65% (200,004B) 0x10AD51: merge_c (sort_c.c:60)
->16.65% (200,004B) 0x10AD60: merge_c (sort_c.c:61)
->03.03% (25,004B) 0x10AD60: merge_c (sort_c.c:61)
```

Definitely less memory across the snapshots, but it's slower.
Let's look at the instructions/cache/branch prediction to see what's going on:


`merge_c`:
```bash
valgrind \
    --tool=cachegrind \
    --cache-sim=yes \
    --branch-sim=yes \
    ./sort 100000 1

cg_annotate cachegrind.out.* \
    --no-annotate \
    --show=Ir,I1mr,ILmr,Dr,D1mr,DLmr,Dw,D1mw,DLmw,Bc,Bcm |\
    grep -E 'sort_[cm]' |
    grep '<'
```

`merge_m`:
| Category           | Metric | Description                        | Count     | % of Program |
|-------------------|--------|----------------------------------- |-----------|--------------|
| Instructions      | Ir     | Instructions executed              | 26,327,681| 34.0%        |
| Instruction Cache | I1mr   | L1 instruction cache misses        | 13        | 0.7%         |
|                   | ILmr   | Last-level instruction cache misses| 12        | 0.7%         |
| Data Reads        | Dr     | Data reads                         | 3,217,374 | 16.0%        |
|                   | D1mr   | L1 data read misses               | 43,508    | 27.7%        |
|                   | DLmr   | Last-level data read misses       | 0         | 0.0%         |
| Data Writes       | Dw     | Data writes                        | 1,945,231 | 17.8%        |
|                   | D1mw   | L1 data write misses              | 36,292    | 29.3%        |
|                   | DLmw   | Last-level data write misses      | 4,701     | 17.4%        |
| Branch Prediction | Bc     | Conditional branches executed      | 3,089,925 | 26.7%        |
|                   | Bcm    | Conditional branch mispredictions  | 61,220    | 5.7%         |

`merge_c`:
| Category           | Metric | Description                        | Count     | % of Program |
|-------------------|--------|----------------------------------- |-----------|--------------|
| Instructions      | Ir     | Instructions executed              | 22,026,713| 29.1%        |
| Instruction Cache | I1mr   | L1 instruction cache misses        | 17        | 1.0%         |
|                   | ILmr   | Last-level instruction cache misses| 16        | 1.0%         |
| Data Reads        | Dr     | Data reads                         | 3,528,341 | 16.7%        |
|                   | D1mr   | L1 data read misses               | 61,234    | 35.0%        |
|                   | DLmr   | Last-level data read misses       | 0         | 0.0%         |
| Data Writes       | Dw     | Data writes                        | 2,243,020 | 19.2%        |
|                   | D1mw   | L1 data write misses              | 64,227    | 42.4%        |
|                   | DLmw   | Last-level data write misses      | 9,412     | 32.9%        |
| Branch Prediction | Bc     | Conditional branches executed      | 1,230,693 | 12.3%        |
|                   | Bcm    | Conditional branch mispredictions  | 71,014    | 6.5%         |

`merge_m` has about 4 million more instructions!
We can see what's going on looking at the annotated assembly:
```bash
perf record ./sort 100000 1 #for each one
perf annotate --stdio --source --symbol=sort_c -M intel > perf_merge_[cm].txt
```

`merge_c`, with the for loop does a look unrolling,
processing two elements at a time:
```asm
: 262  for (int k = p; k <= r; k++) {
# edge case instructions, when we have an odd number of elements
# ...
: 287  if (*left_i <= *right_j) {
 
# load left and right
3.23 :   2c10:   mov    edi,DWORD PTR [rcx]
13.71 :   2c12:   mov    r8d,DWORD PTR [rdx]
# compare
3.23 :   2c15:   xor    r9d,r9d
0.00 :   2c18:   xor    r10d,r10d
0.00 :   2c1b:   cmp    edi,r8d
6.45 :   2c1e:   seta   r9b
4.03 :   2c22:   setbe  r10b

# store smallest value in A (rax)
0.00 :   2c26:   cmovb  r8d,edi
0.81 :   2c2a:   lea    rdi,[rcx+r10*4]
1.61 :   2c2e:   mov    DWORD PTR [rax+rsi*4],r8d

# immediately load the next values for left and right
8.87 :   2c32:   mov    ecx,DWORD PTR [rcx+r10*4]
13.71 :   2c36:   mov    r8d,DWORD PTR [rdx+r9*4]
# compare
0.81 :   2c3a:   xor    r10d,r10d
0.00 :   2c3d:   xor    r11d,r11d
0.00 :   2c40:   cmp    ecx,r8d
4.84 :   2c43:   seta   r10b
8.87 :   2c47:   setbe  r11b
0.00 :   2c4b:   lea    rdx,[rdx+r9*4]
# store smallest value in A (rax)
0.00 :   2c4f:   cmovb  r8d,ecx
4.03 :   2c53:   lea    rcx,[rdi+r11*4]
1.61 :   2c57:   lea    rdx,[rdx+r10*4]
0.81 :   2c5b:   mov    DWORD PTR [rax+rsi*4+0x4],r8d

# increment by 2
: 310  for (int k = p; k <= r; k++) {
8.06 :   2c60:   add    rsi,0x2
0.00 :   2c64:   cmp    ebx,esi
0.00 :   2c66:   jne    2c10 <sort_c+0x330>
```

While `merge_m` only compares one element per loop:
```asm
: 165  if (*left_i <= *right_j) {
5.26 :   3510:   mov    r14d,DWORD PTR [rdi]
22.22 :   3513:   mov    r15d,DWORD PTR [r10]
18.13 :   3516:   xor    ebx,ebx
1.17 :   3518:   xor    r12d,r12d
0.00 :   351b:   cmp    r14d,r15d
5.26 :   351e:   seta   bpl
5.26 :   3522:   setbe  r12b
5.26 :   3526:   cmovb  r15d,r14d
1.75 :   352a:   lea    rdi,[rdi+r12*4]
2.92 :   352e:   mov    DWORD PTR [rcx],r15d
16.37 :   3531:   add    rcx,0x4
: 177  while (left_i < left + n1 && right_j <= &A[r]) {
0.00 :   3535:   cmp    rdi,r9
0.00 :   3538:   jae    3546 <sort_m+0x1d6>
0.00 :   353a:   mov    bl,bpl
0.00 :   353d:   lea    r10,[r10+rbx*4]
5.85 :   3541:   cmp    r10,r11
0.00 :   3544:   jbe    3510 <sort_m+0x1a0>
```

I tried other ways to write `merge_m` in `sort_m2` and `sort_m3`,
but I couldn't get the loop to unroll.


## write-up 5

Insertion sort is well know to be faster than merge or quick sort
for small arrays (say 5 to 50 elements) and when arrays are
"almost sorted".

We implemented a *coarsening* hybrid sort, where instead of the base
elements of merge sort beign swapped, we use insertion sort.

This gives the largest speedup so far! At `THRESHOLD=10`:
```bash
sort_a repeated : Elapsed execution time: 0.027891 sec
sort_i repeated : Elapsed execution time: 0.025476 sec
sort_p repeated : Elapsed execution time: 0.026272 sec
sort_c repeated : Elapsed execution time: 0.016586 sec
sort_a repeated : Elapsed execution time: 0.052069 sec
sort_i repeated : Elapsed execution time: 0.053502 sec
sort_p repeated : Elapsed execution time: 0.050710 sec
sort_c repeated : Elapsed execution time: 0.027676 sec
```

At `THRESHOLD=50`:
```bash
sort_a repeated : Elapsed execution time: 0.035705 sec
sort_i repeated : Elapsed execution time: 0.047204 sec
sort_p repeated : Elapsed execution time: 0.040744 sec
sort_c repeated : Elapsed execution time: 0.032537 sec
sort_a repeated : Elapsed execution time: 0.069789 sec
sort_i repeated : Elapsed execution time: 0.088234 sec
sort_p repeated : Elapsed execution time: 0.077886 sec
sort_c repeated : Elapsed execution time: 0.057883 sec
```

At `THRESHOLD=20`:
```bash
sort_a repeated : Elapsed execution time: 0.046504 sec
sort_i repeated : Elapsed execution time: 0.041429 sec
sort_p repeated : Elapsed execution time: 0.037693 sec
sort_c repeated : Elapsed execution time: 0.027662 sec
sort_a repeated : Elapsed execution time: 0.088169 sec
sort_i repeated : Elapsed execution time: 0.077203 sec
sort_p repeated : Elapsed execution time: 0.078260 sec
sort_c repeated : Elapsed execution time: 0.060203 sec
```

At `THRESHOLD=5`:
```bash
sort_a repeated : Elapsed execution time: 0.048825 sec
sort_i repeated : Elapsed execution time: 0.045397 sec
sort_p repeated : Elapsed execution time: 0.040919 sec
sort_c repeated : Elapsed execution time: 0.035364 sec
sort_a repeated : Elapsed execution time: 0.097272 sec
sort_i repeated : Elapsed execution time: 0.089350 sec
sort_p repeated : Elapsed execution time: 0.082878 sec
sort_c repeated : Elapsed execution time: 0.056631 sec
```

## write-up 4

Array accesses are a special case of pointer arithmetic,
where `a[i]` is equivalent to `*(a + i)`.

However, `*a++` can be more efficient because most
CPU architectures have a special instruction for
getting the current value and incrementing the pointer register.
On ARM, we might have `LDR r0, [r1], #4` which loads the value
at the address in `r1` into `r0` and increments `r1` by 4.

So we can apply this to `copy_p` and the `merge_p` functions.

```bash
sort_a repeated : Elapsed execution time: 0.049499 sec
sort_i repeated : Elapsed execution time: 0.042063 sec
sort_p repeated : Elapsed execution time: 0.045845 sec
sort_a repeated : Elapsed execution time: 0.095740 sec
sort_i repeated : Elapsed execution time: 0.081043 sec
sort_p repeated : Elapsed execution time: 0.085785 sec
```


## write-up 3

inline `sort_i` (with everything else):
```
sort_a repeated : Elapsed execution time: 0.005596 sec
sort_i repeated : Elapsed execution time: 0.005097 sec
sort_a repeated : Elapsed execution time: 0.009528 sec
sort_i repeated : Elapsed execution time: 0.008905 sec
```


```bash
objdump -S ./sort > sort.asm
```

`merge_i` is inlined in `sort_i`.
There is no separate call
```asm
000000000000242c <sort_i>:
void sort_i(data_t* A, int p, int r);

// A basic merge sort routine that sorts the subarray A[p..r]
inline void sort_i(data_t* A, int p, int r) {
  assert(A);
  if (p < r) {
    242c:	6b02003f 	cmp	w1, w2
    2430:	54000c8a 	b.ge	25c0 <sort_i+0x194>  // b.tcont
    ...
    2478:	97ffffed 	bl	242c <sort_i>
// Uses two arrays 'left' and 'right' in the merge operation.
inline static void merge_i(data_t* A, int p, int q, int r) {
  assert(A);
  assert(p <= q);
  assert((q + 1) <= r);
  int n1 = q - p + 1;
    247c:	4b1502d8 	sub	w24, w22, w21
```

And we also see that `sort_i` isn't exactly inlined:
because of the recursive nature we have
```asm
2478:	97ffffed 	bl	242c <sort_i>
```
jumping back to the beginning of the function.
(`bl` is sort of equivalent to a function call)

Neither `util.c` functions were inlined, which was surprising to me:
```asm
2490:	97ffff3a 	bl	2178 <mem_alloc>
...
25a0:	97ffff07 	bl	21bc <mem_free>
```
What I was missing here is that both `mem_alloc` and `mem_free`
have system calls, which are not typically inlined.


But `copy_i` is inlined twice:
```asm
copy_i(&(A[p]), left, n1);
  24b0:	93407eaa 	sxtw	x10, w21
int n1 = q - p + 1;
  24b4:	1100070b 	add	w11, w24, #0x1

inline static void copy_i(data_t* source, data_t* dest, int n) {
assert(dest);
assert(source);

for (int i = 0 ; i < n ; i++) {
  24b8:	37f80258 	tbnz	w24, #31, 2500 <sort_i+0xd4>
  24bc:	7100217f 	cmp	w11, #0x8
  24c0:	540000c3 	b.cc	24d8 <sort_i+0xac>  // b.lo, b.ul, b.last
  24c4:	d37ef54d 	lsl	x13, x10, #2

...

  copy_i(&(A[q + 1]), right, n2);
    2508:	93407ecc 	sxtw	x12, w22
  for (int i = 0 ; i < n ; i++) {
    250c:	710032ff 	cmp	w23, #0xc
    2510:	540000e3 	b.cc	252c <sort_i+0x100>  // b.lo, b.ul, b.last
    2514:	d37ef58e 	lsl	x14, x12, #2
```

### inline sort_i, unline merge

I can't see to force inlining of `sort_i`.
I can see one problem, is that the compiler won't know
ahead of time how much of the function to inline,
because the recursion depth is unknown (or hard to calculate).


## write-up 2

```bash
./sort 100000 10 2>/dev/null | grep -E "sort_(a|i)" | grep repeated
```

inline `merge_i`:
```
sort_a repeated : Elapsed execution time: 0.005609 sec
sort_i repeated : Elapsed execution time: 0.005254 sec
sort_a repeated : Elapsed execution time: 0.009592 sec
sort_i repeated : Elapsed execution time: 0.009141 sec
```

inline `util.c`:
```
sort_a repeated : Elapsed execution time: 0.005573 sec
sort_i repeated : Elapsed execution time: 0.005234 sec
sort_a repeated : Elapsed execution time: 0.009642 sec
sort_i repeated : Elapsed execution time: 0.009341 sec
```

inline `copy_i`:
```
sort_a repeated : Elapsed execution time: 0.004861 sec
sort_i repeated : Elapsed execution time: 0.004589 sec
sort_a repeated : Elapsed execution time: 0.009133 sec
sort_i repeated : Elapsed execution time: 0.008732 sec
```

everything all but `merge_i`: (idea is that util.c and copy_i
are called twice and the calling overhead is large relative to the
overall runtime of the functions, which are relatively small)
```
sort_a repeated : Elapsed execution time: 0.005567 sec
sort_i repeated : Elapsed execution time: 0.005293 sec
sort_a repeated : Elapsed execution time: 0.009493 sec
sort_i repeated : Elapsed execution time: 0.009107 sec
```

everything:
```
sort_a repeated : Elapsed execution time: 0.005622 sec
sort_i repeated : Elapsed execution time: 0.005158 sec
sort_a repeated : Elapsed execution time: 0.009603 sec
sort_i repeated : Elapsed execution time: 0.008996 sec
```

## write-up 1

100_000 `ints` = 100_000 * 4 bytes = 400_000 bytes = 400 KB = 0.4 MB

Even though this doesn't fit in the L1 cache,
the merge sort algorithm is very cache friendly.
The algorithm:
1. recursively works on contiguous subarrays
2. copy phase is completely sequential
3. merge phase is sequential writes to `A` with
   sequential reads from `L` and `R`

Another interesting feature is that DEBUG=1 has about
twice as many instructions and takes about twice the time,
even the the cache miss rates are *lower* than DEBUG=0.
Why? It's likely that the additional instructions are
overhead from `assert` and bound checks. These instructions
likely have good cache behavior and are very predictable,
but nonetheless add to the total number of instructions
and slow down the program.

Instructions count only part of the puzzle.
Higher instruction count could lead to faster programs with
* loop unrolling
* function lining
* branch elimination
* loop defusion

```bash
# add arguments on new line
valgrind \
    --tool=cachegrind \
    --cache-sim=yes \
    --D1=32768,8,64 \
    --LL=8388608,16,64 \
    ./sort 100000 100
```

cachegrind DEBUG=0
```bash
Running test #0...
Generating random array of 100000 elements
Arrays are sorted: yes
 --> test_correctness at line 217: PASS
sort_a          : Elapsed execution time: 0.164892 sec
sort_a repeated : Elapsed execution time: 0.163308 sec
Generating inverted array of 100000 elements
Arrays are sorted: yes
 --> test_correctness at line 217: PASS
sort_a          : Elapsed execution time: 0.330190 sec
sort_a repeated : Elapsed execution time: 0.326224 sec

==16661==
==16661== I refs:        26,649,099,318
==16661== I1  misses:             2,738
==16661== LLi misses:             1,305
==16661== I1  miss rate:           0.00%
==16661== LLi miss rate:           0.00%
==16661==
==16661== D refs:        12,035,945,661  (7,173,337,492 rd   + 4,862,608,169 wr)
==16661== D1  misses:        63,908,292  (   33,359,995 rd   +    30,548,297 wr)
==16661== LLd misses:            26,986  (        1,349 rd   +        25,637 wr)
==16661== D1  miss rate:            0.5% (          0.5%     +           0.6%  )
==16661== LLd miss rate:            0.0% (          0.0%     +           0.0%  )
==16661==
==16661== LL refs:           63,911,030  (   33,362,733 rd   +    30,548,297 wr)
==16661== LL misses:             28,291  (        2,654 rd   +        25,637 wr)
==16661== LL miss rate:             0.0% (          0.0%     +           0.0%  )
```


cachegrind DEBUG=1
```bash
Running test #0...
Generating random array of 100000 elements
Arrays are sorted: yes
 --> test_correctness at line 217: PASS
sort_a          : Elapsed execution time: 0.346288 sec
sort_a repeated : Elapsed execution time: 0.345974 sec
Generating inverted array of 100000 elements
Arrays are sorted: yes
 --> test_correctness at line 217: PASS
sort_a          : Elapsed execution time: 0.695457 sec
sort_a repeated : Elapsed execution time: 0.696965 sec

==16683==
==16683== I refs:        54,852,007,054
==16683== I1  misses:             1,942
==16683== LLi misses:             1,280
==16683== I1  miss rate:           0.00%
==16683== LLi miss rate:           0.00%
==16683==
==16683== D refs:        32,271,180,182  (23,856,555,163 rd   + 8,414,625,019 wr)
==16683== D1  misses:        63,931,213  (    33,372,656 rd   +    30,558,557 wr)
==16683== LLd misses:            26,967  (         1,330 rd   +        25,637 wr)
==16683== D1  miss rate:            0.2% (           0.1%     +           0.4%  )
==16683== LLd miss rate:            0.0% (           0.0%     +           0.0%  )
==16683==
==16683== LL refs:           63,933,155  (    33,374,598 rd   +    30,558,557 wr)
==16683== LL misses:             28,247  (         2,610 rd   +        25,637 wr)
==16683== LL miss rate:             0.0% (           0.0%     +           0.0%  )
```
