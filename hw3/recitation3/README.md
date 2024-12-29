# recitation

## write-up 4

The asm is really cool!

```asm
incq	%rsi
movl	$65536, %edx                    # imm = 0x10000
jmp	memcpy@PLT
```

For x86 Linux, function arguments are
* first: %rdi: `a`
* second: %rsi: `b`
* third: %rdx

So first, we set `b = &b[1]` with `incq %rsi`.
Then `%edx` is set to 65536, or 0x10000.
Help to know that registers use prefixes and suffixes
to use difference sizes of a register:
```
64-bit (8 bytes): %rax, %rbx, %rcx, %rdx, ...
32-bit (4 bytes): %eax, %ebx, %ecx, %edx, ...
16-bit (2 bytes): %ax,  %bx,  %cx,  %dx,  ...
8-bit  (1 byte):  %al,  %bl,  %cl,  %dl,  ... (low byte)
8-bit  (1 byte):  %ah,  %bh,  %ch,  %dh,  ... (high byte of lower 16 bits)
```
So `%edx` does set `%rdx`.

Then we jump to `memcpy@PLT`, which is the `memcpy` function.
`memcpy` arguments are `(dest, src, size)`, so we are copying
`65536` bytes from `b + 1 to `a`.

`memcpy` is an optimized standard library function that already
uses vectorization, so this is even better than rolling our own.

## write-up 3

The difference is that the first version thinks it must handle a
conditional branch.

But in the second version, the compiler knows that the ternary
operation corresponds to a max operation.

I don't follow understand and am having trouble finding documentation,
but the general pattern seems to be:
* branching severly disrupts vectorization
* the ternary operation is considered a data transformation,
  where each element of the vector pair is transformed independently


### attempt 2

Assembly length: 0x61
```c
a[i] = (b[i] > a[i]) ? b[i] : a[i];
```

Key change is `pamxub`:
```bash
# pmaxub (%rsi,%rax,1),%xmm0
#        ^             ^ 16 bytes of a
#        16 bytes of b
#        from memory
Memory at (%rsi + %rax):  [5, 8, 3, 7, ...]   (b[i] values)
xmm0:                     [4, 9, 2, 8, ...]   (a[i] values)
After pmaxub:             [5, 9, 3, 8, ...]   (max of each pair)
```

### attempt 1

Assembly length: 0x1fe

```c
if (y[i] > x[i]) x[i] = y[i];
```


## write-up 2

The fix is to use a different alignment size:
```c
a = __builtin_assume_aligned(a, 32);
b = __builtin_assume_aligned(b, 32);
```
We need to match the register size.
The code is identical except now uses `vmovdqa` instead of `vmovdqu`.


### avx2

avx2 is 256 bit registers, so can process 32 bytes at a time.
```asm
10:	c5 fe 6f 04 07       	vmovdqu (%rdi,%rax,1),%ymm0
15:	c5 fe 6f 4c 07 20    	vmovdqu 0x20(%rdi,%rax,1),%ymm1
1b:	c5 fe 6f 54 07 40    	vmovdqu 0x40(%rdi,%rax,1),%ymm2
21:	c5 fe 6f 5c 07 60    	vmovdqu 0x60(%rdi,%rax,1),%ymm3
27:	c5 fd fc 04 06       	vpaddb (%rsi,%rax,1),%ymm0,%ymm0
2c:	c5 f5 fc 4c 06 20    	vpaddb 0x20(%rsi,%rax,1),%ymm1,%ymm1
32:	c5 ed fc 54 06 40    	vpaddb 0x40(%rsi,%rax,1),%ymm2,%ymm2
38:	c5 e5 fc 5c 06 60    	vpaddb 0x60(%rsi,%rax,1),%ymm3,%ymm3
3e:	c5 fe 7f 04 07       	vmovdqu %ymm0,(%rdi,%rax,1)
43:	c5 fe 7f 4c 07 20    	vmovdqu %ymm1,0x20(%rdi,%rax,1)
49:	c5 fe 7f 54 07 40    	vmovdqu %ymm2,0x40(%rdi,%rax,1)
4f:	c5 fe 7f 5c 07 60    	vmovdqu %ymm3,0x60(%rdi,%rax,1)
  for (i = 0; i < SIZE; i++) {

; adding 128 bytes: (4 * 32 bytes) (32 bytes is 256 bits, the AVX2 register size)
55:	48 83 e8 80          	sub    $0xffffffffffffff80,%rax
59:	48 3d 00 00 01 00    	cmp    $0x10000,%rax
5f:	75 af                	jne    10 <test+0x10>
```

How do we get it to use `vmovdqa` instead of `vmovdqu`?

### aligned

One area of improvement: the vectorized code uses `movdqu`
which works for unaligned memory. Faster might be `movdqa`.

We can tell the compiler they are aligned.
```c
a = __builtin_assume_aligned(a, 16);
b = __builtin_assume_aligned(b, 16);
```

Alignment is a property of the pointer! For example,
`a` is aligned to 16 bytes if the address of `a` is divisible by 16.
For example, if `&a` is 0x1240 then `a` is aligned to 16 bytes.

However, if `&a` is 0x1241, then `a` is not aligned to 16 bytes.

It doesn't have to do with the spacing between elements in the array,
but rather the location of the starting point.

So `movdqu` loads `16` bytes regardless of the base address,
where `movdqa` requires the base address to be divisible by 16.

Compiling with `__builtin_assume_aligned` switches the instruction to `movdqa`.

Another difference is the assembly:
```asm
10:	66 0f 6f 04 07       	movdqa (%rdi,%rax,1),%xmm0
15:	66 0f 6f 4c 07 10    	movdqa 0x10(%rdi,%rax,1),%xmm1
1b:	66 0f 6f 54 07 20    	movdqa 0x20(%rdi,%rax,1),%xmm2
21:	66 0f 6f 5c 07 30    	movdqa 0x30(%rdi,%rax,1),%xmm3
27:	66 0f fc 04 06       	paddb  (%rsi,%rax,1),%xmm0
2c:	66 0f fc 4c 06 10    	paddb  0x10(%rsi,%rax,1),%xmm1
32:	66 0f 7f 04 07       	movdqa %xmm0,(%rdi,%rax,1)
37:	66 0f 7f 4c 07 10    	movdqa %xmm1,0x10(%rdi,%rax,1)
3d:	66 0f fc 54 06 20    	paddb  0x20(%rsi,%rax,1),%xmm2
43:	66 0f fc 5c 06 30    	paddb  0x30(%rsi,%rax,1),%xmm3
49:	66 0f 7f 54 07 20    	movdqa %xmm2,0x20(%rdi,%rax,1)
4f:	66 0f 7f 5c 07 30    	movdqa %xmm3,0x30(%rdi,%rax,1)
```

The loads all 4 16-byte chunks from `a` and uses `paddb` to add them to `b`
in memory.

In the old version, the compiler loaded both `a` and `b` into registers
first, then added. So overall, this version uses 4 fewer instructions.

### restrict

`restrict` key word: tells the compiler that the memory
does not share any memory addresses.
```c
void test(uint8_t* restrict a, uint8_t* restrict b) {
    uint64_t i;

    for (i = 0; i < SIZE; i++) {
        a[i] += b[i];
    }
}
```

This completely eliminates the overlap check
and the scalar code from the assembly.


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
