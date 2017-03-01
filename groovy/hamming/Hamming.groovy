class Hamming {
  int compute(String a, String b) {
    return (1..a.length()).inject(0) { difference, i ->
      if (b.length() < i || a[i - 1] == b[i - 1]) {
        difference
      } else {
        difference + 1
      }
    }
  }
}
