function isLeapYear(year: number): boolean {
  let divisibleBy = function(n: number): boolean { return year % n == 0; };
  return divisibleBy(400) || (divisibleBy(4) && !divisibleBy(100));
}

export default isLeapYear
