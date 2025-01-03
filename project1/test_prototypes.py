import argparse
import importlib.util
import sys


def load_module(file_path):
    """Load a Python file as a module."""
    spec = importlib.util.spec_from_file_location("rotate_module", file_path)
    if spec is None:
        raise Exception(f"Could not load module from {file_path}")

    module = importlib.util.module_from_spec(spec)
    if spec.loader is None:
        raise Exception(f"Could not load module from {file_path}")

    spec.loader.exec_module(module)
    return module


def run_tests(rotate_func, test_file="everybit/tests/default"):
    """Run tests against the provided rotate function."""
    with open(test_file) as f:
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

        if command == "t":
            test_num = int(parts[1])
            print(f"--- Test {test_num} ---")
        elif command == "n":
            bit_array = parts[1]
        elif command == "r":
            index = int(parts[1])
            length = int(parts[2])
            shift = int(parts[3])
            bit_array = rotate_func(bit_array, index, length, shift)
        elif command == "e":
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

    return tests_failed == 0


def main():
    parser = argparse.ArgumentParser(
        description="Test different rotate implementations"
    )
    parser.add_argument(
        "implementation", help="Python file containing rotate implementation"
    )
    parser.add_argument(
        "--test-file",
        default="everybit/tests/default",
        help="Test file to use (default: everybit/tests/default)",
    )

    args = parser.parse_args()

    try:
        module = load_module(args.implementation)
        if not hasattr(module, "rotate"):
            print(f"Error: {args.implementation} does not contain a 'rotate' function")
            sys.exit(1)

        success = run_tests(module.rotate, args.test_file)
        sys.exit(0 if success else 1)

    except Exception as e:
        print(f"Error loading implementation: {e}")
        sys.exit(1)


if __name__ == "__main__":
    main()
