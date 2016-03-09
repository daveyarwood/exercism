function divBy(n, year) {
  return year % n == 0;
}

function isLeapYear(year) {
  return divBy(400, year) || (divBy(4, year) && !divBy(100, year));
}

export default isLeapYear;
