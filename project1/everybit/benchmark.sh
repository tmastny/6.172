#!/bin/bash

# Function to get the current git hash (short version)
get_git_hash() {
    git rev-parse --short HEAD
}

# Function to extract tier and time from benchmark output
parse_benchmark() {
    local flag=$1
    local output=$2

    # Strip ANSI escape codes
    output=$(echo "$output" | sed 's/\x1B\[[0-9;]*[mG]//g')

    local tier
    local time
    # Extract the tier number and time from the exceeded line if it exists
    if echo "$output" | grep -q "exceeded.*cutoff"; then
        tier=$(echo "$output" | grep "exceeded.*cutoff" | awk -F 'Tier ' '{print $2}' | awk '{print $1}')
        time=$(echo "$output" | grep "exceeded.*cutoff" | awk '{print $(NF)}')
    else
        # If no "exceeded" line, get the last completed tier's time
        local last_line=$(echo "$output" | grep "completed in" | tail -n1)
        tier=$(echo "$last_line" | awk -F 'Tier ' '{print $2}' | awk '{print $1}')
        time=$(echo "$last_line" | awk -F 'completed in ' '{print $2}' | awk '{print $1}')
    fi

    echo "$flag,$tier,$time,$(get_git_hash)"
}

# Usage function
usage() {
    echo "Usage: $0 [-v]"
    echo "  -v: verbose output, print the runs of each -s, -m, -l"
    exit 1
}

# Parse command-line arguments
verbose=false
while getopts "v" opt; do
    case "$opt" in
        v) verbose=true;;
        \?) usage;;
    esac
done
shift $((OPTIND - 1))

# Clean and compile
make clean && make

# Run tests
make test
if [ $? -ne 0 ]; then
    echo "Tests failed. Stopping benchmark."
    exit 1
fi

# Create or append to benchmark.txt with header if it doesn't exist
if [ ! -f benchmark.txt ]; then
    echo "flag,tier,time,git_hash" > benchmark.txt
fi

# Run benchmarks
for flag in "-s" "-m" "-l"; do
    output=$(./everybit $flag)
    if $verbose; then
        echo "---- Output for $flag ----"
        echo "$output"
        echo "-------------------------"
    fi
    result=$(parse_benchmark "$flag" "$output")
    echo "$result" >> benchmark.txt
    echo "Benchmark for $flag completed"
done

echo "All benchmarks completed. Results added to benchmark.txt"
echo "Recent entries in benchmark.txt:"
tail -n 3 benchmark.txt
