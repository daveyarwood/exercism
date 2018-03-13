module series;

import std.algorithm.comparison : equal;
import std.algorithm.iteration;
import std.array;
import std.conv;
import std.string;

int[] digits(string input) {
  return map!(c => to!int(c))(input.split("")).array;
}

int[][] slice(string input, int size) {
  if (size > input.length)
    throw new Exception("Desired slice is larger than the whole.");

  int[] digits = digits(input);
  int[][] result;

  foreach (int i; 0..to!int(digits.length - size + 1)) {
    result ~= [digits[i..i+size]];
  }

  return result;
}

unittest
{
import std.exception : assertThrown;

// short_digits
{
	const int[] expected = [0, 1, 2, 3, 4, 5];
	const int[] actual = digits("012345");

	assert(equal(actual, expected));
}

// long_digits
{
	const int[] expected = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
	const int[] actual = digits("0123456789");

	assert(equal(actual, expected));
}

// keeps_the_digit_order_if_reversed
{
	const int[] expected = [9, 8, 7, 6, 5, 4, 3, 2, 1, 0];
	const int[] actual = digits("9876543210");

	assert(equal(actual, expected));
}

// keeps_arbitrary_digit_order
{
	const int[] expected = [9, 3, 6, 9, 2, 3, 4, 6, 8];
	const int[] actual = digits("936923468");

	assert(equal(actual, expected));
}

// can_slice_by_1
{
	const int[][] expected = [[0], [1], [2], [3], [4]];
	const int[][] actual = slice("01234", 1);

	assert(equal(actual, expected));
}

// can_slice_by_2
{
	const int[][] expected = [[9, 8], [8, 2], [2, 7], [7, 3], [3, 4], [4, 6], [6, 3]];
	const int[][] actual = slice("98273463", 2);

	assert(equal(actual, expected));
}

// can_slice_by_3
{
	const int[][] expected = [[0, 1, 2], [1, 2, 3], [2, 3, 4]];
	const int[][] actual = slice("01234", 3);

	assert(equal(actual, expected));
}

// can_slice_by_3_with_duplicate_digits
{
	const int[][] expected = [[3, 1, 0], [1, 0, 0], [0, 0, 1]];
	const int[][] actual = slice("31001", 3);

	assert(equal(actual, expected));
}

// can_slice_by_4
{
	const int[][] expected = [[3, 1, 0], [1, 0, 0], [0, 0, 1]];
	const int[][] actual = slice("31001", 3);

	assert(equal(actual, expected));
}

// can_slice_by_5
{
	const int[][] expected = [[8, 1, 2, 2, 8]];
	const int[][] actual = slice("81228", 5);

	assert(equal(actual, expected));
}

// exception_if_not_enough_digits_to_slice
{
	assertThrown(slice("01032987583", 12));
}

// exception_if_invalid_input
{
	assertThrown(slice("01032i987583", 12));
}

// exception_if_invalid_input_2
{
	assertThrown(digits("01032i987583"));
}

}
