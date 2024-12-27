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

## cache misses by line

```bash
cg_annotate cachegrind.out.*
```

This line:
```c
val = (val + data[l]);
```

Responsible for 100% of L1 and LL data read misses.
```
600,000,000 (12.9%)  // 12.9% of all instructions (Ir)
0                    // I1 misses
0                    // IL misses
400,000,000 (34.5%)  // 34.5% of all data reads (Dr)
99,919,271 (100.0%)  // 100% of all L1 data read misses (D1mr)
79,104,010 (100.0%)  // 100% of all LL data read misses (DLmr)
100,000,000 (16.1%)  // 16.1% of all data writes (Dw)
0                    // D1 write misses
0                    // DL write misses
0                    // Branch conditions
0                    // Branch mispredictions
0                    // Indirect branches
0                    // Indirect branch misses
```

So
```python
all_reads = 400_000_000 / 0.345
all_read_misses = 99_919_271
read_miss_rate = all_read_misses / all_reads

all_writes = 310_013_830
all_write_misses = 625_621
write_miss_rate = all_write_misses / all_writes

all_cache_checks = all_reads + all_writes
all_cache_misses = all_read_misses + all_write_misses

print(f"Read miss rate: {read_miss_rate:.1%}")
print(f"Write miss rate: {write_miss_rate:.1%}")
print(f"Total cache miss rate: {all_cache_misses / all_cache_checks:.1%}")
# Read miss rate: 8.6%
# Write miss rate: 0.2%
# Total cache miss rate: 6.8%
```
