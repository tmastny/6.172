# homework3

## write-up 8

### arm <<
```
Elapsed execution time: 0.244873 sec; N: 8192, I: 100000, __OP__: <<, __TYPE__: uint32_t
Elapsed execution time: 0.114618 sec; N: 8192, I: 100000, __OP__: <<, __TYPE__: uint32_t
```

And once again, ARM has instructions for this situation: `ushl.4s`.

### x86 <<
```
Elapsed execution time: 1.951943 sec; N: 8192, I: 100000, __OP__: <<, __TYPE__: uint32_t
Elapsed execution time: 6.942292 sec; N: 8192, I: 100000, __OP__: <<, __TYPE__: uint32_t
```

The `<<` operator has even more overhead than the `*` version,
you can see from the assembly.

### arm assembly
```
Elapsed execution time: 0.263251 sec; N: 8192, I: 100000, __OP__: *, __TYPE__: uint32_t
Elapsed execution time: 0.120661 sec; N: 8192, I: 100000, __OP__: *, __TYPE__: uint32_t
```

ARM has `mul.4s` which multiplies 4 32-bit integers in parallel,
so we see a huge speed-up.


### x86 assembly
`__OP__ = *`:
```bash
# x86:      Elapsed execution time: 1.733270 sec; N: 8192, I: 100000, __OP__: *, __TYPE__: uint32_t
# x86 SIMD: Elapsed execution time: 1.733270 sec; N: 8192, I: 100000, __OP__: *, __TYPE__: uint32_t
```

One reason we don't see the speed-up is that
there x86 does not have a good way to multiple
4 32-bit integers in the 128-bit SIMD registers.

`pmuludq` only multiples the lower 32-bits of
each 64-bit integer "part" of the 128-bit register.
So we need another instruction to move the lower bits
to the upper bits `pshufd`.

```asm
80:	66 0f 6f 94 84 20 00 	movdqa 0x10020(%rsp,%rax,4),%xmm2
a5:	66 0f 6f ac 84 20 80 	movdqa 0x8020(%rsp,%rax,4),%xmm5

# XMM2: [A, B, C, D]
# XMM5: [E, F, G, H]

pshufd $0xf5,%xmm5,%xmm0  ; xmm0 = [B, C, D, D]
pshufd $0b, %xmm2, %xmm2  ; xmm2 = [B, D, B, D]kkk
pmuludq %xmm2,%xmm5       ; xmm5 = [A*E, C*G] output is only 64-bit

pshufd $0xe8,%xmm5,%xmm5    ; xmm5 = [A*E, 0, C*G, 0]
pshufd $0xf5,%xmm2,%xmm2    ; xmm2 = [F, G, H, H]
pmuludq %xmm0,%xmm2         ; xmm2 = [B*F, D*H]

pshufd $0xe8,%xmm2,%xmm0    ; xmm0 = [B*F, 0, D*H, 0]
punpckldq %xmm0,%xmm5       ; xmm5 = [A*E, B*F, C*G, D*H]
```

## write-up 6

### x86 speedup

```bash
perf record ./loop
perf annotate --stdio --symbol=main > mvprof.asm
```

```asm
99.93 :   11f0:   mov    0x8020(%rsp,%rax,4),%ecx
 0.00 :   11f7:   mov    0x8024(%rsp,%rax,4),%edx
 0.00 :   11fe:   add    0x10020(%rsp,%rax,4),%ecx
 0.00 :   1205:   add    0x10024(%rsp,%rax,4),%edx
 0.00 :   120c:   mov    %ecx,0x20(%rsp,%rax,4)
 0.00 :   1210:   mov    0x8028(%rsp,%rax,4),%ecx
 0.00 :   1217:   add    0x10028(%rsp,%rax,4),%ecx
 0.00 :   121e:   mov    %edx,0x24(%rsp,%rax,4)
 0.00 :   1222:   mov    0x802c(%rsp,%rax,4),%edx
 0.00 :   1229:   add    0x1002c(%rsp,%rax,4),%edx
 0.00 :   1230:   mov    %ecx,0x28(%rsp,%rax,4)
 0.00 :   1234:   mov    %edx,0x2c(%rsp,%rax,4)
```
All the time is spent on the first instruction,
because `A`, `B`, and `C` can all fit in the cache.
So if there is a new cache line to add, it will happen there.

The actual addition operations are very small.

So 11f0 ensures 11f7 and the next iteration are in the cache,
BUT what about `0x10020` 0x20`: they would not be included in the
64 byte cache line. What's going on?

Likely hardware prefetching recognizes the pattern and starts
loading the lines for those addresses while we are waiting
on 11f0: that instruction likely triggers the prefetching.

From my limited understanding, it's hard to directly measure
CPU prefetching, but we can infer based on clues from profiling,
like the above.

We can also see this when we instrument the ARM version,
where the cache misses only happen at the begining of the program:
```
Process: loop (6206)
00:02.000                                                                      00:02.2
                     |-------------------------------------------------------------------------|
L1D_CACHE_MISS_LD    |████                                                                  |
INST_INT_LD          |████████      ████████      ████████      ████████ |
```


We see the same pattern in the vectorized version:
```asm
99.59 :   11f0:   movdqa 0x8020(%rsp,%rax,4),%xmm0
```



### arm speedup

The profile for m3 is really interesting.
The runtime is dominated by the array setup
rather than the core SIMD loop, which explains our lack of speed.
```asm
38         +0x94  mov             w8, #0x0                          ; =0
39         +0x98  mov             x9, #0x0                          ; =0
40  59.6%  +0x9c  add             x10, x20, x9
41         +0xa0  ldp             q0, q1, [x10]
42         +0xa4  ldp             q2, q3, [x10, #0x20]
43         +0xa8  add             x10, x21, x9
44   0.9%  +0xac  ldp             q4, q5, [x10]
45   2.6%  +0xb0  ldp             q6, q7, [x10, #0x20]
46   1.8%  +0xb4  add.4s          v0, v4, v0
47   0.9%  +0xb8  add.4s          v1, v5, v1
48   0.9%  +0xbc  add.4s          v2, v6, v2
49         +0xc0  add.4s          v3, v7, v3
50   0.9%  +0xc4  add             x10, x22, x9
51  19.3%  +0xc8  stp             q0, q1, [x10]
52   6.1%  +0xcc  stp             q2, q3, [x10, #0x20]
53   2.6%  +0xd0  add             x9, x9, #0x40
54   1.8%  +0xd4  cmp             x9, #0x8, lsl #12              ; =0x8000
55   1.8%  +0xd8  b.ne            "main+0x9c"
56         +0xdc  add             w8, w8, #0x1
57         +0xe0  cmp             w8, w23
```

without vectorization:
```asm
40   6.5%  +0x9c  ldr             w10, [x20, x9]
41   0.4%  +0xa0  ldr             w11, [x21, x9]
42         +0xa4  add             w10, w11, w10
43  93.1%  +0xa8  str             w10, [x22, x9]
```

To really see speedups, the arrays would need to be much large,
or operations more compute-intensive.

If we loop at time, 114 ms vs 245 ms, ignoring overhead we can roughly account
for the speed. The scalar version spends about all the 245 ms in the core loop,
where the SIMD versin spends about 4 ms in loads, 4 ms in adds, 29 ms in stores,
or 37 ms total. That gives about a 6.6x speedup! That's closer to the 8x speedup
expected for AVX2, with some additional overhead because ARM uses
`ldp` with 2 128-bit registers instead.

### vectorization speedups

Relatively minor changes.

```bash
make
# x86: Elapsed execution time: 0.231844 sec; N: 1024, I: 100000, __OP__: +, __TYPE__: uint32_t
# x86, N=8192: Elapsed execution time: 1.685231 sec; N: 8192, I: 100000, __OP__: +, __TYPE__: uint32_t

#  m3: Elapsed execution time: 0.030357 sec; N: 1024, I: 100000, __OP__: +, __TYPE__: uint32_t
# m3, N=8192: Elapsed execution time: 0.237252 sec; N: 8192, I: 100000, __OP__: +, __TYPE__: uint32_t

make VECTORIZE=1
# x86: Elapsed execution time: 0.077484 sec; N: 1024, I: 100000, __OP__: +, __TYPE__: uint32_t
# x86, N=8192: Elapsed execution time: 0.557382 sec; N: 8192, I: 100000, __OP__: +, __TYPE__: uint32_t

#  m3: Elapsed execution time: 0.018743 sec; N: 1024, I: 100000, __OP__: +, __TYPE__: uint32_t
# m3, N=8192: Elapsed execution time: 0.124397 sec; N: 8192, I: 100000, __OP__: +, __TYPE__: uint32_t

make VECTORIZE=1 AVX2=1
# x86: Elapsed execution time: 0.071874 sec; N: 1024, I: 100000, __OP__: +, __TYPE__: uint32_t
# x86, N=8192: Elapsed execution time: 0.510652 sec; N: 8192, I: 100000, __OP__: +, __TYPE__: uint32_t
#  m3: Elapsed execution time: 0.018719 sec; N: 1024, I: 100000, __OP__: +, __TYPE__: uint32_t
```

m3 speed ups: 1.6x, 1.9x
x86: 3x, 3x

Don't really turst x86 axv2, since m3 does not have 256-bit registers,
but it was useful to walk through the assembly.

#### m3 speed-up only 1.6x

make:
The core loop with ARM assembly is much simpler.
Load the data and add them, and write back.
```asm
98: b8696a8a     	ldr	w10, [x20, x9]
9c: b8696aab     	ldr	w11, [x21, x9]
a0: 0b0a016a     	add	w10, w11, w10
a4: b8296aca     	str	w10, [x22, x9]
```

The SIMD version has some interesting differences:
```asm
# setup x10 register to be `A`
98: 8b09028a     	add	x10, x20, x9

# q registers are 128-bit. This is a unique
# ARM instruction that loads both q0 and q1
# in one, so this is loading 8 `uint32_t`s
9c: ad400540     	ldp	q0, q1, [x10]
a0: ad410d42     	ldp	q2, q3, [x10, #0x20]

# set x10 to `B`
a4: 8b0902aa     	add	x10, x21, x9
a8: ad401544     	ldp	q4, q5, [x10]
ac: ad411d46     	ldp	q6, q7, [x10, #0x20]

# `v`s are portion of `q`s
b0: 4ea08480     	add.4s	v0, v4, v0
b4: 4ea184a1     	add.4s	v1, v5, v1
b8: 4ea284c2     	add.4s	v2, v6, v2
bc: 4ea384e3     	add.4s	v3, v7, v3

# set x10 to `C`
c0: 8b0902ca     	add	x10, x22, x9
c4: ad000540     	stp	q0, q1, [x10]
c8: ad010d42     	stp	q2, q3, [x10, #0x20]
```


#### non-vectorized assembly (write-up 7)

`make` assembly: since the three arrays are initialized on the stack
rather than as function arguments in the previous examples,
the assembly allocates `0x1000` bytes (2^10 * 4 bytes) for each array
on the stack.
```asm
# allocates ~0x3000 on the stack
7:	48 81 ec 28 30 00 00 	sub    $0x3028,%rsp

# Recall that function argument registers are:
# * first: %rdi: 0x2020
# * second: %rsi: 0
# * third: %rdx: 0x1000

# memset(<base address>, <constant byte>, <number of bytes>)
  14:	48 8d bc 24 20 20 00 	lea    0x2020(%rsp),%rdi # `B` address
  1b:	00
  1c:	31 db                	xor    %ebx,%ebx
  1e:	ba 00 10 00 00       	mov    $0x1000,%edx      # length of `B`
  23:	31 f6                	xor    %esi,%esi         # `0` byte
  25:	e8 00 00 00 00       	call   2a <main+0x2a>    # memset
```

Then does the same for `A` array at `0x1020` and `C` at `0x20`

Then the core loop is
```asm
  80:	8b 8c 84 20 10 00 00 	mov    0x1020(%rsp,%rax,4),%ecx # A[0]
  87:	8b 94 84 24 10 00 00 	mov    0x1024(%rsp,%rax,4),%edx # A[1]
  8e:	03 8c 84 20 20 00 00 	add    0x2020(%rsp,%rax,4),%ecx # A[0] + B[0]
  95:	03 94 84 24 20 00 00 	add    0x2024(%rsp,%rax,4),%edx # A[1] + B[1]
  9c:	89 4c 84 20          	mov    %ecx,0x20(%rsp,%rax,4)   # C[0] = A[0] + B[0]
  a0:	8b 8c 84 28 10 00 00 	mov    0x1028(%rsp,%rax,4),%ecx
  a7:	03 8c 84 28 20 00 00 	add    0x2028(%rsp,%rax,4),%ecx
```

#### vectorized assembly

128 bit registers can fit 4 `uint32_t`s.
Each `movdqa` loads 4 `uint32_t`s into a register,
then the index jumps 0x10 bytes to the next 4 `uint32_t`s.
(0x10 bytes = 16 bytes = 16 * 8 bits = 128 bits)

```asm
  80:	66 0f 6f 84 84 20 10 	movdqa 0x1020(%rsp,%rax,4),%xmm0
  87:	00 00
  89:	66 0f 6f 8c 84 30 10 	movdqa 0x1030(%rsp,%rax,4),%xmm1
  90:	00 00
  92:	66 0f 6f 94 84 40 10 	movdqa 0x1040(%rsp,%rax,4),%xmm2
  99:	00 00
  9b:	66 0f 6f 9c 84 50 10 	movdqa 0x1050(%rsp,%rax,4),%xmm3
  a2:	00 00
  a4:	66 0f fe 84 84 20 20 	paddd  0x2020(%rsp,%rax,4),%xmm0
  ab:	00 00
  ad:	66 0f fe 8c 84 30 20 	paddd  0x2030(%rsp,%rax,4),%xmm1
  b4:	00 00
  b6:	66 0f 7f 44 84 20    	movdqa %xmm0,0x20(%rsp,%rax,4)
  bc:	66 0f 7f 4c 84 30    	movdqa %xmm1,0x30(%rsp,%rax,4)
  c2:	66 0f fe 94 84 40 20 	paddd  0x2040(%rsp,%rax,4),%xmm2
  c9:	00 00
  cb:	66 0f fe 9c 84 50 20 	paddd  0x2050(%rsp,%rax,4),%xmm3
  d2:	00 00
  d4:	66 0f 7f 54 84 40    	movdqa %xmm2,0x40(%rsp,%rax,4)
  da:	66 0f 7f 5c 84 50    	movdqa %xmm3,0x50(%rsp,%rax,4)
```

#### avx2 assembly

avx2 registers are 256 bits, so can fit 8 `uint32_t`s.

Each unrolled iteration jumps 0x20 bytes (32 bytes = 32 * 8 bits = 256 bits).

```asm
  80:	c5 fe 6f 84 84 20 10 	vmovdqu 0x1020(%rsp,%rax,4),%ymm0
  87:	00 00
  89:	c5 fe 6f 8c 84 40 10 	vmovdqu 0x1040(%rsp,%rax,4),%ymm1
  90:	00 00
  92:	c5 fe 6f 94 84 60 10 	vmovdqu 0x1060(%rsp,%rax,4),%ymm2
  99:	00 00
  9b:	c5 fe 6f 9c 84 80 10 	vmovdqu 0x1080(%rsp,%rax,4),%ymm3
  a2:	00 00
  a4:	c5 fd fe 84 84 20 20 	vpaddd 0x2020(%rsp,%rax,4),%ymm0,%ymm0
  ab:	00 00
  ad:	c5 f5 fe 8c 84 40 20 	vpaddd 0x2040(%rsp,%rax,4),%ymm1,%ymm1
  b4:	00 00
  b6:	c5 ed fe 94 84 60 20 	vpaddd 0x2060(%rsp,%rax,4),%ymm2,%ymm2
  bd:	00 00
  bf:	c5 e5 fe 9c 84 80 20 	vpaddd 0x2080(%rsp,%rax,4),%ymm3,%ymm3
  c6:	00 00
  c8:	c5 fe 7f 44 84 20    	vmovdqu %ymm0,0x20(%rsp,%rax,4)
  ce:	c5 fe 7f 4c 84 40    	vmovdqu %ymm1,0x40(%rsp,%rax,4)
  d4:	c5 fe 7f 54 84 60    	vmovdqu %ymm2,0x60(%rsp,%rax,4)
  da:	c5 fe 7f 9c 84 80 00 	vmovdqu %ymm3,0x80(%rsp,%rax,4)
```
