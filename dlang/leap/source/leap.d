bool divisible_by(int n, int year) {
  return year % n == 0;
}

bool is_leap(int year) {
  return divisible_by(400, year) ||
         (divisible_by(4, year) && !divisible_by(100, year));
}

unittest {
  assert(!is_leap(2015));
  assert(is_leap(2016));
  assert(!is_leap(2100));
  assert(is_leap(2000));
}
