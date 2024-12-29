# recitation

## write-up 1

Note: on my my machine, the compiler does not use negative indexing:
```bash
clang --version
Ubuntu clang version 18.1.3 (1ubuntu1)
Target: x86_64-pc-linux-gnu
Thread model: posix
InstalledDir: /usr/bin
```

So `%rax` is set to -65536 and counts up to zero.
One small benefit is the compiler saves a compare instruction.
In the code from the homework, we see:

```asm
addq  $4, %rax
jne   .LBB0_5
```

`jne` tests if the zero flag was set in the last instruction,
which would be true incrementing up from -65536 to 0.

On the other hand, our modern assembly needs an additional instruction:
```asm
42:	48 83 c0 04          	add    $0x4,%rax
46:	48 3d 00 00 01 00    	cmp    $0x10000,%rax
4c:	75 d2                	jne    20 <test+0x20>
```
We have to add 4 to `%rax` and then compare it to 65536.
But on modern architectures, this is still very fast
and makes the assembly more readable.



## assembly overview

I found `objdump -S` more readable than the `.S` assembling,
because they interleve the source code with the assembly.

```bash
objdump -S example1.o > e.asm
```

Initial checks: should we vectorize?

First, we need to check for memory overlap:
are any memory locations shared by both arrays?
```asm
lea    0x10000(%rsi),%rax   ; rax = end of array b (b + SIZE)
cmp    %rdi,%rax            ; compare with start of array a
jbe    50                   ; if (end of b <= start of a) -> safe to vectorize
lea    0x10000(%rdi),%rax   ; rax = end of array a (a + SIZE)
cmp    %rsi,%rax            ; compare with start of array b
jbe    50                   ; if (end of a <= start of b) -> safe to vectorize
```

If they overlap, it's fine to proceed with scalar code.
The compiler even unrolls the loop and does 4 iterations (bytes)
at a time.
```asm
20:	0f b6 0c 06          	movzbl (%rsi,%rax,1),%ecx; load 1 byte from b at index %rax
24:	00 0c 07             	add    %cl,(%rdi,%rax,1) ; %cl is lowest byte of %ecx
27:	0f b6 4c 06 01       	movzbl 0x1(%rsi,%rax,1),%ecx
2c:	00 4c 07 01          	add    %cl,0x1(%rdi,%rax,1)
30:	0f b6 4c 06 02       	movzbl 0x2(%rsi,%rax,1),%ecx
35:	00 4c 07 02          	add    %cl,0x2(%rdi,%rax,1)
39:	0f b6 4c 06 03       	movzbl 0x3(%rsi,%rax,1),%ecx
3e:	00 4c 07 03          	add    %cl,0x3(%rdi,%rax,1)
  for (i = 0; i < SIZE; i++) {
42:	48 83 c0 04          	add    $0x4,%rax
46:	48 3d 00 00 01 00    	cmp    $0x10000,%rax
4c:	75 d2                	jne    20 <test+0x20>
```

Next, we can look at the vectorized version.
The XMM registers are 128 bit: or 16 bytes,
so can process 16 iterations at a time.

Furthermore, the compiler even unrolls the vectorized
code, doing 4 iteratons, or 64 bytes at a time!
```asm
60:	f3 0f 6f 04 06       	movdqu (%rsi,%rax,1),%xmm0 ; load 16 bytes from b
65:	f3 0f 6f 4c 06 10    	movdqu 0x10(%rsi,%rax,1),%xmm1 ; load next 16 bytes from b

6b:	f3 0f 6f 14 07       	movdqu (%rdi,%rax,1),%xmm2 ; load 16 bytes from a
70:	66 0f fc d0          	paddb  %xmm0,%xmm2 ; Parallel add

74:	f3 0f 6f 44 07 10    	movdqu 0x10(%rdi,%rax,1),%xmm0 ; load next 16 bytes from a
7a:	66 0f fc c1          	paddb  %xmm1,%xmm0; Parallel add

# repeat
7e:	f3 0f 6f 4c 07 20    	movdqu 0x20(%rdi,%rax,1),%xmm1
84:	f3 0f 6f 5c 07 30    	movdqu 0x30(%rdi,%rax,1),%xmm3
8a:	f3 0f 7f 14 07       	movdqu %xmm2,(%rdi,%rax,1)
8f:	f3 0f 7f 44 07 10    	movdqu %xmm0,0x10(%rdi,%rax,1)
95:	f3 0f 6f 44 06 20    	movdqu 0x20(%rsi,%rax,1),%xmm0
9b:	66 0f fc c1          	paddb  %xmm1,%xmm0
9f:	f3 0f 6f 4c 06 30    	movdqu 0x30(%rsi,%rax,1),%xmm1
a5:	66 0f fc cb          	paddb  %xmm3,%xmm1
a9:	f3 0f 7f 44 07 20    	movdqu %xmm0,0x20(%rdi,%rax,1)
af:	f3 0f 7f 4c 07 30    	movdqu %xmm1,0x30(%rdi,%rax,1)
  for (i = 0; i < SIZE; i++) {
b5:	48 83 c0 40          	add    $0x40,%rax
b9:	48 3d 00 00 01 00    	cmp    $0x10000,%rax
bf:	75 9f                	jne    60 <test+0x60>
```

In this example, the compiler sees that `SIZE` is divisible by 64,
so we don't need a scalar "cleanup" loop.
