Boolean divisibleBy(Integer n, Integer year) {
  return year % n == 0;
}

Boolean leapYear(Integer year) {
  return divisibleBy(400, year) ||
         divisibleBy(4, year) && !divisibleBy(100, year);
}
