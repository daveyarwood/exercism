proc divBy(n: int, year: int): bool =
  return year mod n == 0

proc isLeapYear*(year: int): bool =
  return divBy(400, year) or (divBy(4, year) and not divBy(100, year))
