/**
 * Copyright (c) 2012 MIT License by 6.172 Staff
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to
 * deal in the Software without restriction, including without limitation the
 * rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
 * sell copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 * IN THE SOFTWARE.
 **/

// Implements the ADT specified in bitarray.h as a packed array of bits; a bit
// array containing bit_sz bits will consume roughly bit_sz/8 bytes of
// memory.

#include "./bitarray.h"

#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>
#include <sys/types.h>
#include <stdint.h>
#include <stdio.h>

// ********************************* Types **********************************

// Concrete data type representing an array of bits.
struct bitarray {
    // The number of bits represented by this bit array.
    // Need not be divisible by 8.
    size_t bit_sz;

    // The underlying memory buffer that stores the bits in
    // packed form (8 per byte).
    char* buf;
};

typedef enum { LSHIFT, RSHIFT } shift_direction;

typedef struct bitarray_mask {
    char mask;
    char byte;
    size_t byte_index;
} bitarray_mask;

void print_byte_binary(unsigned char b) {
    for (int i = 0; i < 8; i++) {  // Start from LSB (bit 0)
        printf("%d", (b >> i) & 1);
    }
}

void print_short_binary(uint16_t s) {
    for (int i = 0; i < 16; i++) {  // Start from LSB (bit 0)
        printf("%d", (s >> i) & 1);
    }
}

void left_mask(bitarray_mask* lmask, bitarray_t* const bitarray,
               size_t bit_index) {
    printf("C left_mask: bit_index=%zu, bit_sz=%zu\n", bit_index, bitarray->bit_sz);

    size_t byte_index = bit_index / 8;
    size_t byte_array_length = (bitarray->bit_sz / 8) + 1;
    if (byte_index == byte_array_length) {
        lmask->mask = 0;
        lmask->byte = 0;

        // Note: if bit_sz < 8, then the byte index would be zero.
        // But if bit_sz < 8, then we call rotate_ref instead of rotate.
        lmask->byte_index = byte_array_length - 1;
        return;
    }

    bit_index %= 8;

    lmask->mask = 0xFF >> (8 - bit_index);
    lmask->mask = lmask->mask << (8 - bit_index);

    lmask->byte = bitarray->buf[byte_index] & lmask->mask;
    lmask->byte_index = byte_index;
}

void right_mask(bitarray_mask* rmask, bitarray_t* const bitarray,
                size_t bit_index) {
    printf("C right_mask: bit_index=%zu, bit_sz=%zu\n", bit_index, bitarray->bit_sz);
                    
    if (bit_index % 8 == 0) {
        rmask->mask = 0;
        rmask->byte = 0;
        rmask->byte_index = bit_index / 8 - 1;
        return;
    }

    size_t byte_index = bit_index / 8;
    size_t byte_array_length = (bitarray->bit_sz / 8) + 1;
    if (byte_index == byte_array_length) {
        rmask->mask = 0;
        rmask->byte = 0;
        rmask->byte_index = byte_array_length - 1;
        return;
    }

    printf("C right_mask: byte: ");
    print_byte_binary((unsigned char)bitarray->buf[byte_index]);
    printf("\n");

    rmask->mask = 0xFF << (bit_index % 8);
    rmask->byte = bitarray->buf[byte_index] & rmask->mask;
    rmask->byte_index = byte_index;
}

// ******************** Prototypes for static functions *********************

// Rotates a subarray left by an arbitrary number of bits.
//
// bit_offset is the index of the start of the subarray
// bit_length is the length of the subarray, in bits
// bit_left_amount is the number of places to rotate the
//                    subarray left
//
// The subarray spans the half-open interval
// [bit_offset, bit_offset + bit_length)
// That is, the start is inclusive, but the end is exclusive.
static void bitarray_rotate_left(bitarray_t* const bitarray,
                                 const size_t bit_offset,
                                 const size_t bit_length,
                                 const size_t bit_left_amount);

// Rotates a subarray left by one bit.
//
// bit_offset is the index of the start of the subarray
// bit_length is the length of the subarray, in bits
//
// The subarray spans the half-open interval
// [bit_offset, bit_offset + bit_length)
// That is, the start is inclusive, but the end is exclusive.
static void bitarray_rotate_left_one(bitarray_t* const bitarray,
                                     const size_t bit_offset,
                                     const size_t bit_length);

// Portable modulo operation that supports negative dividends.
//
// Many programming languages define modulo in a manner incompatible with its
// widely-accepted mathematical definition.
// http://stackoverflow.com/questions/1907565/c-python-different-behaviour-of-the-modulo-operation
// provides details; in particular, C's modulo
// operator (which the standard calls a "remainder" operator) yields a result
// signed identically to the dividend e.g., -1 % 10 yields -1.
// This is obviously unacceptable for a function which returns size_t, so we
// define our own.
//
// n is the dividend and m is the divisor
//
// Returns a positive integer r = n (mod m), in the range
// 0 <= r < m.
static size_t modulo(const ssize_t n, const size_t m);

// Produces a mask which, when ANDed with a byte, retains only the
// bit_index th byte.
//
// Example: bitmask(5) produces the byte 0b00100000.
//
// (Note that here the index is counted from right
// to left, which is different from how we represent bitarrays in the
// tests.  This function is only used by bitarray_get and bitarray_set,
// however, so as long as you always use bitarray_get and bitarray_set
// to access bits in your bitarray, this reverse representation should
// not matter.
static char bitmask(const size_t bit_index);

// ******************************* Functions ********************************

bitarray_t* bitarray_new(const size_t bit_sz) {
    // Allocate an underlying buffer of ceil(bit_sz/8) bytes.
    char* const buf = calloc(1, (bit_sz + 7) / 8);
    if (buf == NULL) {
        return NULL;
    }

    // Allocate space for the struct.
    bitarray_t* const bitarray = malloc(sizeof(struct bitarray));
    if (bitarray == NULL) {
        free(buf);
        return NULL;
    }

    bitarray->buf = buf;
    bitarray->bit_sz = bit_sz;
    return bitarray;
}

void bitarray_free(bitarray_t* const bitarray) {
    if (bitarray == NULL) {
        return;
    }
    free(bitarray->buf);
    bitarray->buf = NULL;
    free(bitarray);
}

size_t bitarray_get_bit_sz(const bitarray_t* const bitarray) {
    return bitarray->bit_sz;
}

bool bitarray_get(const bitarray_t* const bitarray, const size_t bit_index) {
    assert(bit_index < bitarray->bit_sz);

    // We're storing bits in packed form, 8 per byte.  So to get the nth
    // bit, we want to look at the (n mod 8)th bit of the (floor(n/8)th)
    // byte.
    //
    // In C, integer division is floored explicitly, so we can just do it to
    // get the byte; we then bitwise-and the byte with an appropriate mask
    // to produce either a zero byte (if the bit was 0) or a nonzero byte
    // (if it wasn't).  Finally, we convert that to a boolean.
    return (bitarray->buf[bit_index / 8] & bitmask(bit_index)) ? true : false;
}

void bitarray_set(bitarray_t* const bitarray, const size_t bit_index,
                  const bool value) {
    assert(bit_index < bitarray->bit_sz);

    // We're storing bits in packed form, 8 per byte.  So to set the nth
    // bit, we want to set the (n mod 8)th bit of the (floor(n/8)th) byte.
    //
    // In C, integer division is floored explicitly, so we can just do it to
    // get the byte; we then bitwise-and the byte with an appropriate mask
    // to clear out the bit we're about to set.  We bitwise-or the result
    // with a byte that has either a 1 or a 0 in the correct place.
    bitarray->buf[bit_index / 8] =
        (bitarray->buf[bit_index / 8] & ~bitmask(bit_index)) |
        (value ? bitmask(bit_index) : 0);
}

void bitarray_randfill(bitarray_t* const bitarray) {
    int32_t* ptr = (int32_t*)bitarray->buf;
    for (int64_t i = 0; i < (bitarray->bit_sz + 31) / 32; i++) {
        ptr[i] = rand();
    }
}

void reverse_byte(char* byte) {
    *byte = ((*byte & 0xF0) >> 4) | ((*byte & 0x0F) << 4);
    *byte = ((*byte & 0xCC) >> 2) | ((*byte & 0x33) << 2);
    *byte = ((*byte & 0xAA) >> 1) | ((*byte & 0x55) << 1);
}

void reverse_array(char* array, size_t start, size_t end) {
    char temp;
    size_t j = end;
    for (size_t i = start; i < (start + end) / 2; i++) {
        j--;
        temp = array[i];
        array[i] = array[j];
        array[j] = temp;
    }
}

ssize_t calc_shift(size_t start, size_t end) {
    ssize_t left = start % 8;
    ssize_t right = (8 - end % 8) % 8;
    return right - left;
}

void left_shift(char* array, size_t start, size_t end, size_t shift) {
    printf("C left_shift: start=%zu, end=%zu, shift=%zu\n", start, end, shift);
    printf("C before lshift: ");
    for (size_t i = start; i < end; i++) {
        print_byte_binary((unsigned char)array[i]);
        printf(" ");
    }
    printf("\n");

    for (size_t i = start; i < end - 1; i++) {
        printf("  i=%zu:\n", i);
        printf("    byte[i]="); print_byte_binary((unsigned char)array[i]);
        printf(" byte[i+1]="); print_byte_binary((unsigned char)array[i + 1]);
        printf("\n");
        
        uint16_t temp = (uint16_t)((unsigned char)array[i]);  
        temp |= (((uint16_t)((unsigned char)array[i + 1])) << 8);  
        temp >>= shift;  
        array[i] = temp;  
        printf("    array[i]="); print_byte_binary(array[i]);
        printf("\n");
    }

    array[end - 1] = (char)((unsigned char)array[end - 1] >> shift);

    printf("C after lshift:  ");
    for (size_t i = start; i < end; i++) {
        print_byte_binary((unsigned char)array[i]);
        printf(" ");
    }
    printf("\n");
}

void right_shift(char* array, size_t start, size_t end, size_t shift) {
    printf("C right_shift: start=%zu, end=%zu, shift=%zu\n", start, end, shift);
    printf("C before rshift: ");
    for (size_t i = start; i < end; i++) {
        print_byte_binary((unsigned char)array[i]);
        printf(" ");
    }
    printf("\n");

    for (size_t i = end - 1; i > start; i--) {
        uint16_t temp = ((uint16_t)((unsigned char)array[i])) << 8;  
        temp |= (uint16_t)((unsigned char)array[i - 1]);                    
        temp <<= shift;  
        array[i] = temp >> 8;  
    }

    array[start] = (char)((unsigned char)array[start] << shift);

    printf("C after rshift:  ");
    for (size_t i = start; i < end; i++) {
        print_byte_binary((unsigned char)array[i]);
        printf(" ");
    }
    printf("\n");
}

void shift_bytes(char* array, size_t start, size_t end, ssize_t shift) {
    if (shift == 0) {
        return;
    }

    shift_direction direction = shift > 0 ? LSHIFT : RSHIFT;
    shift = labs(shift);

    if (direction == LSHIFT) {
        left_shift(array, start, end, shift);
    } else if (direction == RSHIFT) {
        right_shift(array, start, end, shift);
    } else {
        return;
    }
}

void set_ends(char* array, bitarray_mask* lmask, bitarray_mask* rmask) {
    array[lmask->byte_index] =
        (array[lmask->byte_index] & ~lmask->mask) | lmask->byte;
    array[rmask->byte_index] =
        (array[rmask->byte_index] & ~rmask->mask) | rmask->byte;
}

void reverse(bitarray_t* const bitarray, const size_t start, const size_t end) {
    printf("C reverse: start=%zu, end=%zu\n", start, end);
    
    printf("Raw bytes at start: ");
    for (size_t i = 0; i < (bitarray_get_bit_sz(bitarray) + 7) / 8; i++) {
        print_byte_binary((unsigned char)bitarray->buf[i]);
        printf(" ");
    }
    printf("\n");
    
    if (start + 1 >= end) {
        return;
    }

    printf("C masks: start=%zu, end=%zu\n", start, end);
    bitarray_mask lmask, rmask;
    left_mask(&lmask, bitarray, start);
    right_mask(&rmask, bitarray, end);
    
    printf("C masks:\n");
    printf("  start: mask="); print_byte_binary(lmask.mask); 
    printf(", byte="); print_byte_binary(lmask.byte);
    printf(", idx=%zu\n", lmask.byte_index);
    
    printf("  end  : mask="); print_byte_binary(rmask.mask);
    printf(", byte="); print_byte_binary(rmask.byte);
    printf(", idx=%zu\n", rmask.byte_index);

    printf("C before reverse_byte: ");
    for (size_t i = lmask.byte_index; i <= rmask.byte_index; i++) {
        print_byte_binary((unsigned char)bitarray->buf[i]);
        printf(" ");
    }
    printf("\n");

    for (size_t i = lmask.byte_index; i <= rmask.byte_index; i++) {
        reverse_byte(&bitarray->buf[i]);
    }
    
    printf("C after reverse_byte:  ");
    for (size_t i = lmask.byte_index; i <= rmask.byte_index; i++) {
        print_byte_binary((unsigned char)bitarray->buf[i]);
        printf(" ");
    }
    printf("\n");

    reverse_array(bitarray->buf, lmask.byte_index, rmask.byte_index + 1);
    
    printf("C after reverse_array: ");
    for (size_t i = lmask.byte_index; i <= rmask.byte_index; i++) {
        print_byte_binary((unsigned char)bitarray->buf[i]);
        printf(" ");
    }
    printf("\n");

    ssize_t shift = calc_shift(start, end);
    printf("C shift: direction=%s, amount=%zd\n", 
           shift > 0 ? "LSHIFT" : "RSHIFT", labs(shift));
    
    shift_bytes(bitarray->buf, lmask.byte_index, rmask.byte_index + 1, shift);
    
    printf("C after shift_bytes:  ");
    for (size_t i = lmask.byte_index; i <= rmask.byte_index; i++) {
        print_byte_binary((unsigned char)bitarray->buf[i]);
        printf(" ");
    }
    printf("\n");

    set_ends(bitarray->buf, &lmask, &rmask);
    
    printf("C final result:       ");
    for (size_t i = lmask.byte_index; i <= rmask.byte_index; i++) {
        print_byte_binary((unsigned char)bitarray->buf[i]);
        printf(" ");
    }
    printf("\n");
}

void rotate(bitarray_t* const bitarray, const size_t bit_start,
            const size_t bit_end, const ssize_t bit_right_shift) {
    size_t shift_idx = bit_start + bit_right_shift;

    reverse(bitarray, bit_start, shift_idx);
    reverse(bitarray, shift_idx, bit_end);

    reverse(bitarray, bit_start, bit_end);
}

void bitarray_rotate(bitarray_t* const bitarray, const size_t bit_offset,
                     const size_t bit_length, const ssize_t bit_right_amount) {
    assert(bit_offset + bit_length <= bitarray->bit_sz);

    if (bit_length <= 8) {
        bitarray_rotate_ref(bitarray, bit_offset, bit_length, bit_right_amount);
        return;
    }

    if (bit_right_amount == 0) {
        return;
    }

    if (bit_length == 0) {
        return;
    }

    ssize_t bit_right_shift = (ssize_t)(modulo(bit_right_amount, bit_length));
    bit_right_shift = labs((ssize_t)(bit_length) - (ssize_t)(bit_right_shift));

    rotate(bitarray, bit_offset, bit_offset + bit_length, bit_right_shift);
}

void bitarray_rotate_ref(bitarray_t* const bitarray, const size_t bit_offset,
                         const size_t bit_length,
                         const ssize_t bit_right_amount) {
    assert(bit_offset + bit_length <= bitarray->bit_sz);

    if (bit_length == 0) {
        return;
    }

    // Convert a rotate left or right to a left rotate only, and eliminate
    // multiple full rotations.
    bitarray_rotate_left(bitarray, bit_offset, bit_length,
                         modulo(-bit_right_amount, bit_length));
}

static void bitarray_rotate_left(bitarray_t* const bitarray,
                                 const size_t bit_offset,
                                 const size_t bit_length,
                                 const size_t bit_left_amount) {
    for (size_t i = 0; i < bit_left_amount; i++) {
        bitarray_rotate_left_one(bitarray, bit_offset, bit_length);
    }
}

static void bitarray_rotate_left_one(bitarray_t* const bitarray,
                                     const size_t bit_offset,
                                     const size_t bit_length) {
    // Grab the first bit in the range, shift everything left by one, and
    // then stick the first bit at the end.
    const bool first_bit = bitarray_get(bitarray, bit_offset);
    size_t i;
    for (i = bit_offset; i + 1 < bit_offset + bit_length; i++) {
        bitarray_set(bitarray, i, bitarray_get(bitarray, i + 1));
    }
    bitarray_set(bitarray, i, first_bit);
}

static size_t modulo(const ssize_t n, const size_t m) {
    const ssize_t signed_m = (ssize_t)m;
    assert(signed_m > 0);
    const ssize_t result = ((n % signed_m) + signed_m) % signed_m;
    assert(result >= 0);
    return (size_t)result;
}

static char bitmask(const size_t bit_index) { return 1 << (bit_index % 8); }
