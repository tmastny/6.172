#!/bin/bash

# Clean start
make clean

# Test each type
for type in uint64_t uint32_t uint16_t uint8_t; do
    make VECTORIZE=1 EXTRA_CFLAGS="-D__TYPE__=${type}" > /dev/null 2>&1
    ./loop
    make clean > /dev/null 2>&1
done
