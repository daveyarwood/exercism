def divBy(n, year):
    return year % n == 0

def is_leap_year(year):
    return divBy(400, year) or (divBy(4, year) and not divBy(100, year))
