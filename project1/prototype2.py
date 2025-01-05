import argparse
from prototype import rotate

RSHIFT = 0
LSHIFT = 1


def as_bitarray(s):
    b = 0
    for i in range(len(s)):
        b = (b << 8) | s[i]

    return f"{b:0{len(s) * 8}b}"


def print_array(s, part="a"):
    print(f"{part:15}: " + ", ".join([f"{b:08b}" for b in s]))


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


def print_mask(mask):
    mask, byte, byte_index = mask
    print(f"mask: {mask:08b}, byte: {byte:08b}, byte_index: {byte_index}")


def left_mask(s, index):
    byte_index = index // 8
    bit_index = index % 8

    byte = s[byte_index]
    mask = 0xFF >> (8 - bit_index)
    mask = mask << (8 - bit_index)
    return mask, byte & mask, byte_index


def right_mask(s, index):
    byte_index = index // 8
    if byte_index == len(s):
        return 0, 0, len(s) - 1

    bit_index = 8 - (index % 8)

    byte = s[byte_index]

    mask = 0xFF >> (8 - bit_index)
    return mask, byte & mask, byte_index


def rshift_bytes(s, start_byte_index, end_byte_index, shift):
    #       rev: ---543210 2b 1b 765-----
    #     shift:   >> 2
    for i in range(end_byte_index - 1, start_byte_index, -1):
        s[i] = ((s[i - 1] << 8) | s[i]) >> shift
        s[i] &= 0xFF

    s[start_byte_index] >>= shift


def lshift_bytes(s, start_byte_index, end_byte_index, shift):
    for i in range(start_byte_index, end_byte_index - 1):
        s[i] = ((s[i] << 8) | s[i + 1]) << shift
        s[i] &= 0xFF00
        s[i] >>= 8

    s[end_byte_index - 1] <<= shift
    s[end_byte_index - 1] &= 0xFF


def shift_bytes(s, start_byte_index, end_byte_index, shift):
    if shift == 0:
        return

    if shift[0] == RSHIFT:
        rshift_bytes(s, start_byte_index, end_byte_index, shift[1])
    elif shift[0] == LSHIFT:
        lshift_bytes(s, start_byte_index, end_byte_index, shift[1])
    else:
        raise ValueError("Invalid shift direction")


def set_ends(s, start_mask, end_mask):
    start_mask, start_byte, start_byte_index = start_mask
    end_mask, end_byte, end_byte_index = end_mask

    s[start_byte_index] = s[start_byte_index] & ~start_mask | start_byte
    s[end_byte_index] = s[end_byte_index] & ~end_mask | end_byte


def calc_shift(start, end):
    # example 1: ---34567 b1 b2 012-----
    #             ^start: 3        ^end : 27
    #       rev: -----210 2b 1b 76543---
    #     shift:   << 2

    # example 1: -----567 b1 b2 012345---
    #                 ^start: 5       ^end : 29
    #       rev: ---543210 2b 1b 765-----
    #     shift:   >> 2
    left = start % 8
    right = (8 - end % 8) % 8

    shift = right - left
    direction = LSHIFT if shift > 0 else RSHIFT

    return direction, abs(shift)


def reverse(s, start, end):
    start_mask = left_mask(s, start)
    end_mask = right_mask(s, end)

    _, _, start_byte_index = start_mask
    _, _, end_byte_index = end_mask

    for i in range(start_byte_index, end_byte_index + 1):
        s[i] = reverse_byte(s[i])

    reverse_array(s, start_byte_index, end_byte_index + 1)
    shift_bytes(s, start_byte_index, end_byte_index + 1, calc_shift(start, end))
    set_ends(s, start_mask, end_mask)


def parse_bitarray(b):
    bytes = []
    # First byte - no padding
    first_byte = b[: min(8, len(b))]
    bytes.append(int(first_byte, 2))

    # Remaining bytes - pad with zeros
    for i in range(8, len(b), 8):
        byte = b[i : i + 8]
        byte = byte.ljust(8, "0")  # pad with zeros
        bytes.append(int(byte, 2))

    return bytes


def test_parse():
    test_cases = [
        {
            "name": "Parse test 1",
            "input": "10001011101000111111011111011010",
            "expected": [0b10001011, 0b10100011, 0b11110111, 0b11011010],
        },
        {
            "name": "Parse test 2",
            "input": "01011011101000111111011110001011",
            "expected": [0b01011011, 0b10100011, 0b11110111, 0b10001011],
        },
        {
            "name": "Uneven bitarray",
            "input": "0101101101",
            "expected": [0b01011011, 0b01000000],
        },
        {
            "name": "Small bitarray",
            "input": "101",
            "expected": [0b101],
        },
    ]

    for case in test_cases:
        print(f"\n{case['name']}:")
        print(f"Input binary:  {case['input']}")
        result = parse_bitarray(case["input"])
        print(f"Result array:  {', '.join([f'{b:08b}' for b in result])}")
        print(f"Expected array:{', '.join([f'{b:08b}' for b in case['expected']])}")
        assert result == case["expected"], f"{case['name']} failed"
        print(f"{case['name']} passed")


def test_reverse():
    test_cases = [
        {
            "name": "Test case 0",
            "input": [0b10001_011, 0b10100011, 0b11110111, 0b11011_010],
            "expected": [0b10001_110, 0b11111011, 0b11110001, 0b01110_010],
            "start": 5,
            "end": 29,
        },
        {
            "name": "Test case 1",
            "input": [0b10001_011, 0b10100011, 0b11110111, 0b11011_010],
            "expected": [0b010_11011, 0b11101111, 0b11000101, 0b110_10001],
            "start": 0,
            "end": 32,
        },
        {
            "name": "Test case 2",
            "input": [0b010_11011, 0b10100011, 0b11110111, 0b100_01011],
            "expected": [0b010_00111, 0b10111111, 0b00010111, 0b011_01011],
            "start": 3,
            "end": 27,
        },
    ]

    for case in test_cases:
        print(f"\n{case['name']}:")
        print_array(case["input"], "input")
        print_array(case["expected"], "expected")

        reverse(case["input"], case["start"], case["end"])

        print_array(case["input"], "result")
        assert case["input"] == case["expected"], f"{case['name']} failed"
        print(f"{case['name']} passed")


def test_rotate():
    test_cases = [
        {
            "name": "Test case 0",
            "input": "10001011101000111111011111011010",
            "expected": "01000101110100011111101111101101",
            "index": 0,
            "length": 32,
            "rshift": 1,
        },
    ]

    for case in test_cases:
        print(f"\n{case['name']}:")
        print(f"Input binary   : {case['input']}")
        result = rotate(case["input"], case["index"], case["length"], case["rshift"])
        print(f"Result binary  : {result}")
        print(f"Expected binary: {case['expected']}")
        assert result == case["expected"], f"{case['name']} failed"
        print(f"{case['name']} passed")


def rot(s, start, end, shift):
    shift_idx = start + shift

    reverse(s, start, shift_idx)
    reverse(s, shift_idx, end)

    reverse(s, start, end)


def rotate(s, index, length, rshift):
    assert index + length <= len(s)

    if length == 0:
        return s

    rshift %= length
    rshift = abs(rshift - length)

    s = parse_bitarray(s)
    rot(s, index, index + length, rshift)

    return as_bitarray(s)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Bit array rotation")
    parser.add_argument(
        "-r", "--test-reverse", action="store_true", help="Test reverse"
    )
    parser.add_argument(
        "-p", "--test-parse", action="store_true", help="Test parse_bitarray"
    )
    parser.add_argument("-t", "--test-rotate", action="store_true", help="Test rotate")

    args = parser.parse_args()

    if args.test_reverse:
        test_reverse()
    if args.test_parse:
        test_parse()
    if args.test_rotate:
        test_rotate()
