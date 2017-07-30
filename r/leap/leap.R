divBy <- function(year, n)
  year %% n == 0

leap <- function(year)
  divBy(year, 400) |
  (divBy(year, 4) & !divBy(year, 100))

