def reverse(s, start, end):
    j = end
    for i in range(start, (start + end) // 2):
        j -= 1
        s[i], s[j] = s[j], s[i]

    return s


def rot(s, start, end, shift):
    shift_idx = start + shift

    reverse(s, start, shift_idx)
    print(s[start:shift_idx])

    reverse(s, shift_idx, end)
    print(s[shift_idx:end])

    reverse(s, start, end)


def rotate(s, index, length, rshift):
    assert index + length <= len(s)

    if length == 0:
        return s

    rshift %= length
    rshift = abs(rshift - length)

    left = "".join(s[0:index])
    substr = "".join(s[index : index + length])
    right = "".join(s[index + length :])
    print(f"index: {index}, length: {length}, rshift: {rshift}")
    print(f"left: {left}, substr: {substr}, right: {right}")

    s = list(s)
    rot(s, index, index + length, rshift)

    print("result: " + "".join(s) + "\n")

    return "".join(s)
