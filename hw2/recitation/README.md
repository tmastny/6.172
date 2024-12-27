# recitation

Branch misses
```bash
ubuntu@dev:~/work/hw2/recitation$ valgrind --tool=cachegrind --branch-sim=yes ./sum
==15022== Cachegrind, a high-precision tracing profiler
==15022== Copyright (C) 2002-2017, and GNU GPL'd, by Nicholas Nethercote et al.
==15022== Using Valgrind-3.22.0 and LibVEX; rerun with -h for copyright info
==15022== Command: ./sum
==15022==
Allocated array of size 10000000
Summing 100000000 random values...
Done. Value = 938895920
==15022==
==15022== I refs:        3,240,108,523
==15022==
==15022== Branches:        210,019,821  (110,019,664 cond + 100,000,157 ind)
==15022== Mispredicts:           2,667  (      2,591 cond +          76 ind)
==15022== Mispred rate:            0.0% (        0.0%     +         0.0%   )
```

Config:
```bash
--D1=32768,8,64
     |     | |
     |     | +-- Line size (bytes)
     |     +---- Associativity (n-way set associative)
     +--------- Cache size (bytes)

--LL=8388608,16,64
     |      |  |
     |      |  +-- Line size (bytes)
     |      +----- Associativity
     +------------ Cache size (8MB)
```


Cache misses

```bash
valgrind --tool=cachegrind \
    --cache-sim=yes \
    --branch-sim=yes \
    --D1=32768,8,64 \
    --LL=8388608,16,64 \
    ./sum
```

```bash
==15052==
==15052== I refs:        3,240,108,523
==15052== I1  misses:            1,188
==15052== LLi misses:            1,103
==15052== I1  miss rate:          0.00%
==15052== LLi miss rate:          0.00%
==15052==
==15052== D refs:          810,044,072  (500,030,242 rd   + 310,013,830 wr)
==15052== D1  misses:      100,546,437  ( 99,920,816 rd   +     625,621 wr)
==15052== LLd misses:       79,730,935  ( 79,105,343 rd   +     625,592 wr)
==15052== D1  miss rate:          12.4% (       20.0%     +         0.2%  )
==15052== LLd miss rate:           9.8% (       15.8%     +         0.2%  )
==15052==
==15052== LL refs:         100,547,625  ( 99,922,004 rd   +     625,621 wr)
==15052== LL misses:        79,732,038  ( 79,106,446 rd   +     625,592 wr)
==15052== LL miss rate:            2.0% (        2.1%     +         0.2%  )
```


Why 400M?
1. Reading `val` (for the addition)
2. Reading `l` (index)
3. Reading `data` (base pointer)
4. Reading `*(data + l)` (actual array element)
```
Ir_________________ I1mr____ ILmr____ Dr_________________ D1mr_______________ DLmr_______________ Dw_________________ D1mw___________ DLmw___________ Bc_________________ Bcm_____ Bi Bim
500,000,000 (13.2%) 0        0        400,000,000 (42.1%) 99,919,280 (100.0%) 79,104,020 (100.0%) 100,000,000 (19.2%)       0               0                   0         0         0   0      val = (val + data[l]);
```

Now our L1 cache is 8MB, which holds 2,097,152 `uint32_t`s. 
Since we have 10M unique values, we expect the cache to only have
20% of the values. That bears out in the LL miss rate:
we do 100M reads and the DLmr is 79M, which is ~20% hit rate.

## bring down cache miss rate

The goal of `sum` is to sum 100M random values.

In this case, 
```c
int l = rand_r(&seed) % U;
val = (val + data[l]);
```
`data[l]` is redundant. `l` is already
a random value within the range, 
because `data` is just an array from 0 to 10M:

```c
for (i = 0; i < U; i++) {
  data[i] = i;
}
```

So we don't have to allocate that array at all.
To compute the sum, we just need to do this:
```c
data_t val = 0;
data_t seed = 42;
for (i = 0; i < N; i++) {
  int l = rand_r(&seed) % U;
  val = (val + l);
}
```