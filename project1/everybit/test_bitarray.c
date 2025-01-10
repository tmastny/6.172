#include <stdio.h>
#include <string.h>
#include "./bitarray.h"

// Helper function to convert binary string to bitarray
bitarray_t* string_to_bitarray(const char* binary_string) {
    size_t length = strlen(binary_string);
    bitarray_t* bitarray = bitarray_new(length);
    
    printf("Converting string to bitarray:\n");
    for (size_t byte = 0; byte < (length + 7)/8; byte++) {
        unsigned char value = 0;
        
        // Process 8 bits at a time
        for (size_t bit = 0; bit < 8 && (byte * 8 + bit) < length; bit++) {
            // String index for this bit
            size_t str_idx = byte * 8 + bit;
            
            // If it's a 1, set it in the correct position
            if (binary_string[str_idx] == '1') {
                value |= (1 << (7 - bit));  // This is correct - MSB first
            }
        }
        
        // Store the byte by setting each bit
        for (size_t bit = 0; bit < 8 && (byte * 8 + bit) < length; bit++) {
            bitarray_set(bitarray, byte * 8 + bit, (value >> bit) & 1);
        }
        
        printf("Byte %zu: ", byte);
        print_byte_binary((unsigned char)value);
        printf("\n");
    }
    
    return bitarray;
}

// Helper function to print bitarray as binary string
void print_bitarray(bitarray_t* bitarray) {
    for (size_t i = 0; i < bitarray_get_bit_sz(bitarray); i++) {
        printf("%d", bitarray_get(bitarray, i) ? 1 : 0);
    }
    printf("\n");
}

int main() {
    const char* input = "10001011101000111111011111011010";
    const char* expected = "01000101110100011111101111101101";
    
    printf("Input binary   : %s\n", input);
    printf("Expected binary: %s\n", expected);
    
    bitarray_t* bitarray = string_to_bitarray(input);
    
    // Rotate the entire array right by 1
    bitarray_rotate(bitarray, 0, 32, 1);
    
    printf("Result binary  : ");
    print_bitarray(bitarray);
    
    // Clean up
    bitarray_free(bitarray);
    return 0;
} 