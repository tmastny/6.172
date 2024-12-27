# homework

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
