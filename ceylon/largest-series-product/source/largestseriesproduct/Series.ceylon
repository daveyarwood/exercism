class Error() {}

{{Character*}*} windows({Character*} str, Integer windowSize) {
  return { for (n in 0 .. str.size - windowSize) str.skip(n).take(windowSize) };
}

// Helper function to turn characters that may or may not be digits (but that we
// expect to be digits) into integers.
Integer charToDigit(Character c) {
  Integer|ParseException n = Integer.parse(c.string);
  assert (is Integer n);
  return n;
}

Integer|Error largestProduct(String digits, Integer windowSize) {
  if (windowSize < 0 ||
      windowSize > digits.size ||
      !digits.every(Character.digit)) {
    return Error();
  }

  // This can be null if `windowSize` is 0 or `digits` is empty.
  Integer? largest = max({
    for (window in windows(digits, windowSize))
      window.map(charToDigit).fold(1)((Integer x, Integer y) => x * y)
  });

  return if (exists largest) then largest else 1;
}
