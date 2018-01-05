module Leap

let leapYear (year: int): bool =
  let divisibleBy n = year % n = 0
  divisibleBy 400 || (divisibleBy 4 && not (divisibleBy 100))
