#!/bin/bash

# Check if -v flag is passed
if [ "$1" == "-v" ]; then
    VECTORIZE_FLAG="VECTORIZE=1"
else
    VECTORIZE_FLAG=""
fi

# Clean start
make clean

# Compile once with default TYPE and OP
make $VECTORIZE_FLAG > /dev/null 2>&1

# Array sizes to test
sizes=(1024 2048 4096 8192)

# Test each size
for n in "${sizes[@]}"; do
    echo "=== Testing N = ${n} ==="
    ./loop $n
done

make clean > /dev/null 2>&1