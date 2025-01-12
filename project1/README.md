# project 1

## uint64_t shifts

```
8a 64b 32c
```

Your result:     [ 1 0 1 0 1 0 0 0 1 0 0 1 0 0 0 1 0 1 0 0 1 0 1 1 1 0 0 1 1 0 0 0 0 1 1 1 0 0 0 1 1 0 1 0 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 0 0 0 1 0 1 0 1 0 1 1 0 1 0 0 1 0 0 1 1 0 1 0 0 0 0 0 0 0 1 1 1 0 1 0 1 0 1 1 1 1 0 0 1 0 0 1 1 1 0 0 0 0 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 0 1 0 0 1 1 1 1 1 0 0 1 0 1 0 1 1 0 0 0 1 0 1 1 0 1 0 1 0 1 1 0 1 0 0 0 1 0 0 1 0 1 1 1 0 0 0 1 0 1 0 0 1 1 0 0 1 1 1 0 1 0 0 1 0 1 0 0 0 0 0 0 0 1 1 1 1 0 0 0 1 0 1 | 0 0 0 0 1 0 0 1 1 0 0 1 0 0 0 1 0 0 1 0 0 0 1 0 1 1 0 0 1 0 0 0 0 1 1 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 1 0 0 0 1 1 1 0 0 0 0 1 0 0 0 1 1 0 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 0 0 1 0 0 1 1 1 1 1 0 0 0 0 1 0 0 1 1 0 1 0 1 0 1 1 0 0 1 0 1 0 1 1 1 0 1 1 0 1 0 0 1 1 0 1 0 1 0 1 0 0 1 1 0 0 1 0 0 0 0 0 0 1 1 0 0 0 1 1 0 1 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 1 1 1 1 0 0 0 0 1 1 0 0 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 0 0 0 0 0 1 1 0 1 0 1 0 0 0 0 0 0 1 0 1 0 1 1 0 0 1 0 0 0 0 1 1 1 0 1 0 1 0 0 0 0 0 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 0 1 1 0 0 0 1 0 1 0 1 1 0 0 0 0 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 0 1 0 0 0 0 1 1 1 0 1 0 1 1 0 0 0 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 0 0 1 0 1 1 0 0 0 0 0 1 0 0 1 1 1 1 1 0 0 1 1 0 0 0 0 0 1 1 1 0 0 0 0 1 0 1 1 0 1 0 0 1 1 0 1 1 0 0 0 0 1 1 0 0 0 0 0 1 0 1 1 1 1 1 0 0 0 1 0 0 1 1 0 1 1 1 1 0 0 1 0 1 1 1 1 0 1 0 0 0 1 0 0 0 0 1 0 1 ]
Expected result: [ 1 0 1 0 1 0 0 0 1 0 0 1 0 0 0 1 0 1 0 0 1 0 1 1 1 0 0 1 1 0 0 0 0 1 1 1 0 0 0 1 1 0 1 0 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 0 0 0 1 0 1 0 1 0 1 1 0 1 0 0 1 0 0 1 1 0 1 0 0 0 0 0 0 0 1 1 1 0 1 0 1 0 1 1 1 1 0 0 1 0 0 1 1 1 0 0 0 0 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 0 1 0 0 1 1 1 1 1 0 0 1 0 1 0 1 1 0 0 0 1 0 1 1 0 1 0 1 0 1 1 0 1 0 0 0 1 0 0 1 0 1 1 1 0 0 0 1 0 1 0 0 1 1 0 0 1 1 1 0 1 0 0 1 0 1 0 0 0 0 0 0 0 1 1 1 1 0 0 0 1 0 1 | 1 0 0 0 0 1 0 0 1 1 0 0 1 0 0 0 1 0 0 1 0 0 0 1 0 1 1 0 0 1 0 0 0 0 1 1 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 1 1 1 0 0 1 0 0 0 1 1 1 0 0 0 0 1 0 0 0 1 1 0 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 0 0 1 0 0 1 1 1 1 1 0 0 0 0 1 0 0 1 1 0 1 0 1 0 1 1 0 0 1 0 1 0 1 1 1 0 1 1 0 1 0 0 1 1 0 1 0 1 0 1 0 0 1 1 0 0 1 0 0 0 0 0 0 1 1 0 0 0 1 1 0 1 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 1 1 1 1 0 0 0 0 1 1 0 0 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 0 0 0 0 0 1 1 0 1 0 1 0 0 0 0 0 0 1 0 1 0 1 1 0 0 1 0 0 0 0 1 1 1 0 1 0 1 0 0 0 0 0 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 0 1 1 0 0 0 1 0 1 0 1 1 0 0 0 0 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 0 1 0 0 0 0 1 1 1 0 1 0 1 1 0 0 0 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 0 0 1 0 1 1 0 0 0 0 0 1 0 0 1 1 1 1 1 0 0 1 1 0 0 0 0 0 1 1 1 0 0 0 0 1 0 1 1 0 1 0 0 1 1 0 1 1 0 0 0 0 1 1 0 0 0 0 0 1 0 1 1 1 1 1 0 0 0 1 0 0 1 1 0 1 1 1 1 0 0 1 0 1 1 1 1 0 1 0 0 0 1 0 0 0 0 1 0 1 ]


## reverse lookup table

Did not significantly speed up the program.

```c
// Add this near the top of the file with other global variables/definitions
static unsigned char REVERSE_LOOKUP[256];

// Add this function to initialize the lookup table
static void init_reverse_lookup() {
    for (int i = 0; i < 256; i++) {
        unsigned char b = i;
        b = ((b & 0xF0) >> 4) | ((b & 0x0F) << 4);
        b = ((b & 0xCC) >> 2) | ((b & 0x33) << 2);
        b = ((b & 0xAA) >> 1) | ((b & 0x55) << 1);
        REVERSE_LOOKUP[i] = b;
    }
}

// Modify the bitarray_new function to initialize the lookup table
bitarray_t* bitarray_new(const size_t bit_sz) {
    static bool initialized = false;
    if (!initialized) {
        init_reverse_lookup();
        initialized = true;
    }
    // ... rest of existing bitarray_new code ...
}

// Replace the reverse_byte function with this optimized version
void reverse_byte(char* byte) {
    *byte = REVERSE_LOOKUP[(unsigned char)*byte];
}
```

## asm notes

```asm
; Setup: xmm2 contains current 16 bytes
movdqa %xmm2,%xmm4          ; Copy current 16 bytes to xmm4
movdqu (%rdx,%rsi,1),%xmm2  ; Load next 16 bytes from memory
movdqa %xmm2,%xmm5          ; Copy new bytes to xmm5
pslldq $0x1,%xmm5           ; Shift xmm5 left by 1 byte
psrldq $0xf,%xmm4           ; Shift xmm4 right by 15 bytes
por    %xmm5,%xmm4          ; OR results together
# uint16_t temp = (uint16_t)((unsigned char)array[i]);  
# temp |= (((uint16_t)((unsigned char)array[i + 1])) << 8);  
```

```asm
punpckhbw %xmm10,%xmm7      ; Unpack high bytes to words
punpcklbw %xmm10,%xmm0      ; Unpack low bytes to words
pslld  $0x8,%xmm0           ; Shift left by 8
psrld  %xmm9,%xmm6          ; Shift right by amount in xmm9
# temp >>= shift;  
```

```asm
packuswb %xmm0,%xmm6        ; Pack words back to bytes
movdqu %xmm6,-0x1(%rdx,%rsi,1)  ; Store result back to memory
add    $0x10,%rsi           ; Increment counter by 16 bytes
```

```asm
; xmm registers are 128-bit (16 bytes) wide
movdqa %xmm2,%xmm4          ; Copy current 16 bytes from xmm2 to xmm4
movdqu (%rdx,%rsi,1),%xmm2  ; Load next 16 bytes from memory (unaligned) into xmm2
movdqa %xmm2,%xmm5          ; Copy new 16 bytes to xmm5
pslldq $0x1,%xmm5           ; Shift xmm5 left by 1 byte (for boundary handling)
psrldq $0xf,%xmm4           ; Shift xmm4 right by 15 bytes (keep last byte)
por    %xmm5,%xmm4          ; Combine the shifted values

; Now unpacking bytes to words for wider shifting
movdqa %xmm2,%xmm7          ; Copy original data to xmm7
punpckhbw %xmm10,%xmm7      ; Unpack high bytes to words (with zero extend)
movdqa %xmm7,%xmm3          ; Copy unpacked high bytes
punpckhwd %xmm10,%xmm3      ; Unpack high words further
punpcklwd %xmm10,%xmm7      ; Unpack low words

; Same unpacking for low bytes
movdqa %xmm2,%xmm0          ; Copy original data again
punpcklbw %xmm10,%xmm0      ; Unpack low bytes to words
movdqa %xmm0,%xmm1          ; Copy unpacked low bytes
punpckhwd %xmm10,%xmm1      ; Unpack high words
punpcklwd %xmm10,%xmm0      ; Unpack low words

; Shift all unpacked data
pslld  $0x8,%xmm0           ; Shift left by 8 bits
pslld  $0x8,%xmm1           ; Shift left by 8 bits
pslld  $0x8,%xmm7           ; Shift left by 8 bits
pslld  $0x8,%xmm3           ; Shift left by 8 bits
```

Instead of shifting each unpacked byte, 
if we operated on two uint64_t, we could shift only two values. 

```asm
; More unpacking and combining operations
punpcklbw %xmm10,%xmm4      ; Unpack low bytes of xmm4 with zeros
movdqa %xmm4,%xmm6          ; Copy to xmm6
punpcklwd %xmm10,%xmm6      ; Unpack low words of xmm6 with zeros
por    %xmm0,%xmm6          ; OR with previously prepared data
punpckhwd %xmm10,%xmm4      ; Unpack high words of xmm4 with zeros
por    %xmm1,%xmm4          ; OR with previously prepared data

; Same pattern for xmm5
punpckhbw %xmm10,%xmm5      ; Unpack high bytes of xmm5 with zeros
movdqa %xmm5,%xmm0          ; Copy to xmm0
punpcklwd %xmm10,%xmm0      ; Unpack low words of xmm0 with zeros
por    %xmm7,%xmm0          ; OR with previously prepared data
punpckhwd %xmm10,%xmm5      ; Unpack high words of xmm5 with zeros
por    %xmm3,%xmm5          ; OR with previously prepared data

; Actual shift operations
psrld  %xmm9,%xmm6          ; Shift right by amount in xmm9
psrld  %xmm9,%xmm4          ; Shift right by amount in xmm9
psrld  %xmm9,%xmm0          ; Shift right by amount in xmm9
psrld  %xmm9,%xmm5          ; Shift right by amount in xmm9

; Cleanup and store results
pand   %xmm8,%xmm5          ; Mask off unwanted bits
pand   %xmm8,%xmm0          ; Mask off unwanted bits
packuswb %xmm5,%xmm0        ; Pack words back to bytes
pand   %xmm8,%xmm4          ; Mask off unwanted bits
pand   %xmm8,%xmm6          ; Mask off unwanted bits
packuswb %xmm4,%xmm6        ; Pack words back to bytes
packuswb %xmm0,%xmm6        ; Final packing to bytes

; Store and advance
movdqu %xmm6,-0x1(%rdx,%rsi,1)  ; Store 16 processed bytes back to memory
add    $0x10,%rsi               ; Advance pointer by 16 bytes
```


## requirements

* x86
* little endian
* standard C only
  * no inline assembly
  * no compiler intrinsics
* cannot call `bitarray_new` within `bitarray_rotate`
* correctness verified by `bitarray_get_bit_sz` and `bitarray_get`
* don't modify `main.c` or `tests.c`

* memory requirements: "You can allocate small
  buffers on the stack or in the BSS section (e.g., global arrays)."
  * idea: map bytes to reverse bytes in a global array. Only 256 elements
    for a byte at a time.
    

## Rotating by bytes

By the reverse identity (a^R b^R)^R = ba, can can rotate byte-by-byte:

```bash
# rotate left by 1 bit
012345678abcdefgh -> 0hgfedcba987654321 -> 123456789abcdefh0
^^--------------^    ^^---------------^    ^--------------^^
    ^ is it possible to reverse byte-by-byte?
```

```
012345678 -> 765432108 -> 123456780
^------^^    ^------^^

    0123      |     4567 
   45 | 67    |   01  |  23
6 | 7 | 4 | 5 | 2 | 3 | 0 | 1
  76     54      32     10 
```

Zero pad for partial byte
```
    01234567abcd
    01234567 | abcd0000
    76543210 | 0000dcba
    0000dcba | 76543210
uint16_t    << 4
    dcba7654 | 32100000
```

```
array       o1234567abcdef
subarray     0123456789

      copies
start    | end 
o1234567 | abcdef00
7654321o | 00fedcba
00fedcba | 7654321o
       << 2
fedcba76 | 54321o00
```

```
input: 
      start             end
      ---12345  b1  b2  567-----
reverse_byte:
      54321---  1b  2b  -----765
reverse_array_by_byte:
      -----765  2b  1b  54321---
problem: 
      ---765  2b  1b  54321----
      ^                    ^    
  # need to keep original ends
  # hard because have to shift across byte boundaries

input: 
      -----765  2b  1b  54321---
shift_by_16:
      a0        a1  a2  a3
      -----765  2b  1b  54321---

      a0 = ((a0 << 8) | a1) << 2 // mask 0xff00
      a1 = ((a1 << 8) | a2) << 2 // mask 0xff00
      a2 = ((a2 << 8) | a3) << 2 // mask 0xff00
      a3 = ((a3 << 8) |  1) << 2 // mask 0xff00
      
      a0 = a0 & ~start_mask | start
      a3 = a3 & ~end_mask | end
```

