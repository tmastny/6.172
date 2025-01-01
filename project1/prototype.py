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

    return reverse(s, start, end)

def rotate(s, index, length, rshift):
    assert index + length <= len(s)

    if length == 0:
        return s

    rshift %= length
    rshift = abs(rshift - length)


    left = "".join(s[0:index])
    substr = "".join(s[index: index + length])
    right = "".join(s[index + length:])
    print(f"index: {index}, length: {length}, rshift: {rshift}")
    print(f"left: {left}, substr: {substr}, right: {right}")

    s = list(s)
    rot(s, index, index + length, rshift)

    print("result: " + "".join(s) + "\n")

    return "".join(s)

if __name__ == "__main__":
    with open("everybit/tests/default") as f:
        lines = f.readlines()

    test_num = -1
    bit_array = ""
    tests_passed = 0
    tests_failed = 0
    failed_tests = []

    GREEN = "\033[92m"
    RED = "\033[91m"
    RESET = "\033[0m"

    for line in lines:
        line = line.strip()
        if line.startswith("#") or line == "":
            continue

        parts = line.split()
        command = parts[0]

        if command == 't':
            test_num = int(parts[1])
            print(f"--- Test {test_num} ---")
        elif command == 'n':
            bit_array = parts[1]
        elif command == 'r':
            index = int(parts[1])
            length = int(parts[2])
            shift = int(parts[3])
            bit_array = rotate(bit_array, index, length, shift)
        elif command == 'e':
            expected_array = parts[1]
            print(f"Expected: {expected_array}, Actual: {bit_array}")
            if bit_array != expected_array:
                print(f"{RED}Test {test_num} failed!{RESET}")
                tests_failed += 1
                failed_tests.append(test_num)
            else:
                 print(f"{GREEN}Test {test_num} passed!{RESET}")
                 tests_passed += 1
        else:
            print(f"Unknown command {command}")

    print("\n--- Test Summary ---")
    print(f"{GREEN}Tests Passed: {tests_passed}{RESET}")
    if tests_failed > 0:
        print(f"{RED}Tests Failed: {tests_failed}, Failed Tests: {failed_tests}{RESET}")
    else:
        print(f"{GREEN}Tests Failed: {tests_failed}{RESET}")
