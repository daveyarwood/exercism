class Year {
  int year;
  Year(this.year);

  bool divisibleBy(int n) {
    return year % n == 0;
  }

  bool isLeap() {
    return divisibleBy(400) || (divisibleBy(4) && !divisibleBy(100));
  }
}
