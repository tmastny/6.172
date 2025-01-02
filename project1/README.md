# project 1

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

