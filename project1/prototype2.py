from unittest.mock import right
def reverse_byte(b):
    b = ((b & 0xF0) >> 4) | ((b & 0x0F) << 4)
    b = ((b & 0xCC) >> 2) | ((b & 0x33) << 2)
    b = ((b & 0xAA) >> 1) | ((b & 0x55) << 1)

    return b


def reverse_array(s, start, end):
    j = end
    for i in range(start, (start + end) // 2):
        j -= 1
        s[i], s[j] = s[j], s[i]

    return s

def left_mask(byte, index):
    mask = 0xFF >> (8 - index)
    mask = mask << (8 - index)
    return mask, byte & mask

def right_mask(byte, index):
    mask = 0xFF >> (8 - index)
    return mask, byte & mask

def shift_bytes(s, shift):

    for i in range(len(s) - 1):
        s[i] = ((s[i] << 8) | s[i + 1]) << shift
        s[i] &= 0xff00
        s[i] >>= 8

    s[len(s) - 1] <<= shift
    s[len(s) - 1] &= 0xff

def set_ends(s, start_mask, end_mask):
    print(bin(start_mask[0]), bin(start_mask[1]))
    print(bin(end_mask[0]), bin(end_mask[1]))

    s[0] = ~start_mask[0] & s[0] | start_mask[1]
    s[len(s) - 1] = ~end_mask[0] & s[0] | end_mask[1]

def print_array(s, part):
    print(f"{part}: " + ", ".join([f"{b:08b}" for b in s]))

def reverse(s, start, end):
    start_mask = left_mask(s[0], start)
    end_mask = right_mask(s[len(s) - 1], 8 - end % 8)

    s = [reverse_byte(b) for b in s]

    print_array(s, "reverse_byte")

    reverse_array(s, 0, len(s))
    print_array(s, "reverse_array")

    shift_bytes(s, 2)
    print_array(s, "shift")


    set_ends(s, start_mask, end_mask)
    print_array(s, "mask")

# TODO: have to shift other way :(
s = [0b10001_011, 0b10100011, 0b11110111, 0b11011_010]
#      01234 567    89012345    67890123    45678 9
#            ^start                               ^end

s = [0b010_11011, 0b10100011, 0b11110111, 0b100_01011]
#      012 34567    89012345    67890123    456 789
#          ^start                               ^end
#    010_11011, 10100011, 11110111, 100_01011
#    010_00111  11101111  11000101  11011_010


#reverse_byte:   11011010, 11000101, 11101111, 11010001
# reverse_array: 11010001, 11101111, 11000101, 11011010
# shift:           010001  11101111  11000101  1101101000
# shift: 01000111, 10111111, 00010111, 01101000
#        ---                              -----
# mask:  01000111, 10111111, 00010111, 01001011



reverse(s, 3, 27)
