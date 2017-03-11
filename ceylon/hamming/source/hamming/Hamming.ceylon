class Error() {}

Integer|Error distance(String s1, String s2) {
  if (s1.size != s2.size) {
    return Error();
  }

  return zipPairs(s1, s2).count(([c1, c2]) => c1 != c2);
}
