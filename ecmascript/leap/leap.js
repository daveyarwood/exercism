function isLeapYear(year) {
  let divBy = n => year % n == 0;
  return divBy(400) || (divBy(4) && !divBy(100));
}

export default isLeapYear;
