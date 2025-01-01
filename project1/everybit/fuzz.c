#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>
#include "bitarray.h"

#define NUM_TESTS 10000
#define MIN_SIZE 10
#define MAX_SIZE 1000
#define MAX_FAILURES 2

static void print_bitarray_content(bitarray_t* ba) {
    size_t len = bitarray_get_bit_sz(ba);
    printf("[ ");
    for (size_t i = 0; i < len; i++) {
        printf("%d", bitarray_get(ba, i) ? 1 : 0);
        if (i < len - 1) printf(" ");
    }
    printf(" ]\n");
}

static bitarray_t* create_random_bitarray(size_t bit_sz) {
    bitarray_t* ba = bitarray_new(bit_sz);
    if (ba == NULL) {
        fprintf(stderr, "Failed to allocate bitarray\n");
        exit(1);
    }
    bitarray_randfill(ba);
    return ba;
}

static bitarray_t* copy_bitarray(bitarray_t* original) {
    size_t bit_sz = bitarray_get_bit_sz(original);
    bitarray_t* copy = bitarray_new(bit_sz);
    if (copy == NULL) {
        fprintf(stderr, "Failed to allocate bitarray copy\n");
        exit(1);
    }

    // Copy bit by bit
    for (size_t i = 0; i < bit_sz; i++) {
        bitarray_set(copy, i, bitarray_get(original, i));
    }
    return copy;
}

static bool compare_bitarrays(bitarray_t* ba1, bitarray_t* ba2) {
    size_t len = bitarray_get_bit_sz(ba1);
    for (size_t i = 0; i < len; i++) {
        if (bitarray_get(ba1, i) != bitarray_get(ba2, i)) {
            return false;
        }
    }
    return true;
}

int main() {
    srand(time(NULL));
    int failures = 0;
    int tests = 0;

    printf("Starting fuzzing test...\n");

    while (tests < NUM_TESTS && failures < MAX_FAILURES) {
        // Generate random size
        size_t bit_sz = MIN_SIZE + rand() % (MAX_SIZE - MIN_SIZE + 1);

        // Create random bitarray and its copies
        bitarray_t* ba1 = create_random_bitarray(bit_sz);
        bitarray_t* ba2 = copy_bitarray(ba1);
        bitarray_t* ba_original = copy_bitarray(ba1);

        // Generate random offset and length for rotation
        size_t offset = rand() % bit_sz;
        size_t max_length = bit_sz - offset;  // Maximum possible length from offset
        if (max_length == 0) {
            max_length = 1;  // Ensure we have at least length 1
            offset = bit_sz - 1;  // Adjust offset accordingly
        }
        size_t length = 1 + rand() % max_length;
        size_t shift = rand() % (length * 2); // Allow for larger than length shifts

        // Apply both rotations
        bitarray_rotate(ba1, offset, length, shift);
        bitarray_rotate_ref(ba2, offset, length, shift);

        // Compare results
        if (!compare_bitarrays(ba1, ba2)) {
            failures++;
            printf("\nFailure detected! Test case %d\n", tests + 1);
            printf("Parameters: bit_sz=%zu, offset=%zu, length=%zu, shift=%zu\n",
                   bit_sz, offset, length, shift);

            printf("Original array:  ");
            print_bitarray_content(ba_original);
            printf("Your result:     ");
            print_bitarray_content(ba1);
            printf("Expected result: ");
            print_bitarray_content(ba2);
            printf("\n");
        }

        // Clean up
        bitarray_free(ba_original);
        bitarray_free(ba1);
        bitarray_free(ba2);
        tests++;
    }

    printf("\nFuzzing complete!\n");
    printf("Total tests run: %d\n", tests);
    printf("Total failures: %d\n", failures);

    return failures > 0 ? 1 : 0;
}
