#!/bin/bash
# test_seeds.sh

start=1
end=1000  # adjust range as needed

for seed in $(seq $start $end); do
    echo "Testing seed: $seed"
    output=$(setarch x86_64 -R ./hashtable 1 $seed 2>&1)
    if [[ $? -ne 0 ]]; then
        echo "Found failing seed: $seed"
        echo "Output:"
        echo "$output"
        exit 0
    fi
done

echo "No failing seeds found in range $start-$end"