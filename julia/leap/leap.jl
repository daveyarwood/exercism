function is_leap_year(year::Int)
  divisible_by(n) = year % n == 0
  divisible_by(400) || (divisible_by(4) && !divisible_by(100))
end

