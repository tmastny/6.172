// Copyright (c) 2015 MIT License by 6.172 Staff

#include <math.h>
#include <stdint.h>
#include <stdlib.h>

#define SIZE (1L << 16)

void test(uint8_t* a, uint8_t* b) {
    uint64_t i;

    for (i = 0; i < SIZE; i++) {
        a[i] += b[i];
    }
}
