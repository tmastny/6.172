# homework

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
No: because left and right are the "same size", if left
fills in `a_k` first, `right_i` will point to same location
and `a_k` will point at `right_i`.

Likewise, if `right` fills in `a_k` first, `left_i` will point
will start overwriting the `right` half of the array, which was already
processed. 

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
