#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

#define ARRAY_SIZE 10000000
#define SEQUENCE_LENGTH 8
#define NUM_SEQUENCES 100000000 / SEQUENCE_LENGTH

int main() {
    uint32_t* data = (uint32_t*)malloc(ARRAY_SIZE * sizeof(uint32_t));
    if (data == NULL) {
        free(data);
        return 1;
    }

    for (uint32_t i = 0; i < ARRAY_SIZE; i++) {
        data[i] = i;
    }

    uint32_t seed = 42;
    uint32_t sum = 0;  // Prevent compiler from optimizing away our reads

    for (int i = 0; i < NUM_SEQUENCES; i++) {
        uint32_t pos = rand_r(&seed) % (ARRAY_SIZE - SEQUENCE_LENGTH);

        for (int j = 0; j < SEQUENCE_LENGTH; j++) {
            sum += data[pos + j];
        }
    }

    printf("Sum: %u\n", sum);  // Prevent optimization
    free(data);
    return 0;
}
