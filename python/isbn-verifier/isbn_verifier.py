import re

# Parses digits out of an ISBN string.
# 0-9 = 0-9, X = 10.
# Hyphens are ignored.
def isbn_digits(isbn):
    isbn = isbn.replace("-", "")
    int_value = lambda char: 10 if char == "X" else int(char)
    return [int_value(char) for char in re.findall(r"\d|X", isbn)]

# Returns True if `isbn` is a valid ISBN string.
def verify(isbn):
    digits = isbn_digits(isbn)

    # There must be 10 valid digits (0-9 or X).
    if len(digits) != 10: return False
    # X (10) can only be the check digit, which is the last digit.
    if any(map(lambda d: d == 10, digits[0:-2])): return False

    # If this equation holds, then the ISBN is valid.
    # (x1 * 10 + x2 * 9 + ... + x9 * 2 + x10 * 1) mod 11 == 0
    products = map(lambda d, n: d * n, digits, range(10, 0, -1))
    return sum(products) % 11 == 0
