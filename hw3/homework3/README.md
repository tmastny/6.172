# homework3

## write-up 6

### vectorization speedups

Relatively minor changes.

```bash
make
# x86: Elapsed execution time: 0.231844 sec; N: 1024, I: 100000, __OP__: +, __TYPE__: uint32_t
#  m3: Elapsed execution time: 0.030357 sec; N: 1024, I: 100000, __OP__: +, __TYPE__: uint32_t

make VECTORIZE=1
# x86: Elapsed execution time: 0.077484 sec; N: 1024, I: 100000, __OP__: +, __TYPE__: uint32_t
#  m3: Elapsed execution time: 0.018743 sec; N: 1024, I: 100000, __OP__: +, __TYPE__: uint32_t

make VECTORIZE=1 AVX2=1
# x86: Elapsed execution time: 0.071874 sec; N: 1024, I: 100000, __OP__: +, __TYPE__: uint32_t
#  m3: Elapsed execution time: 0.018719 sec; N: 1024, I: 100000, __OP__: +, __TYPE__: uint32_t
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
