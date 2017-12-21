let leap_year year =
  let divisible_by n = year mod n == 0
  in (divisible_by 400) || (divisible_by 4 && not (divisible_by 100))
