import argparse

RSHIFT = 0
LSHIFT = 1


def as_bitarray(s):
    b = 0
    for i in range(len(s)):
        b = (b << 8) | s[i]

    return f"{b:08b}"


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


def left_mask(byte, index):
    mask = 0xFF >> (8 - index)
    mask = mask << (8 - index)
    return mask, byte & mask


def right_mask(byte, index):
    mask = 0xFF >> (8 - index)
    return mask, byte & mask


def rshift_bytes(s, shift):
    #       rev: ---543210 2b 1b 765-----
    #     shift:   >> 2
    for i in range(len(s) - 1, 0, -1):
        s[i] = ((s[i - 1] << 8) | s[i]) >> shift
        s[i] &= 0xFF

    s[0] >>= shift


def lshift_bytes(s, shift):
    for i in range(len(s) - 1):
        s[i] = ((s[i] << 8) | s[i + 1]) << shift
        s[i] &= 0xFF00
        s[i] >>= 8

    s[len(s) - 1] <<= shift
    s[len(s) - 1] &= 0xFF


def shift_bytes(s, shift):
    if shift[0] == RSHIFT:
        rshift_bytes(s, shift[1])
    elif shift[0] == LSHIFT:
        lshift_bytes(s, shift[1])
    else:
        raise ValueError("Invalid shift direction")


def set_ends(s, start_mask, end_mask):
    s[0] = s[0] & ~start_mask[0] | start_mask[1]
    s[len(s) - 1] = s[len(s) - 1] & ~end_mask[0] | end_mask[1]


def calc_shift(start, end):
    # example 1: ---34567 b1 b2 012-----
    #             ^start: 3        ^end : 27
    #       rev: -----210 2b 1b 76543---
    #     shift:   << 2

    # example 1: -----567 b1 b2 012345---
    #                 ^start: 5       ^end : 29
    #       rev: ---543210 2b 1b 765-----
    #     shift:   >> 2
    left = start
    right = 8 - end % 8

    shift = right - left
    direction = LSHIFT if shift > 0 else RSHIFT

    return direction, abs(shift)


def reverse(s, start, end):
    start_mask = left_mask(s[0], start)
    end_mask = right_mask(s[len(s) - 1], 8 - end % 8)

    for i in range(len(s)):
        s[i] = reverse_byte(s[i])

    reverse_array(s, 0, len(s))
    shift_bytes(s, calc_shift(start, end))
    set_ends(s, start_mask, end_mask)


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


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Bit array rotation")
    parser.add_argument("-r", "--run-tests", action="store_true", help="Run test cases")

    args = parser.parse_args()

    if args.run_tests:
        test_reverse()
