module Leap exposing (isLeapYear)

isLeapYear : Int -> Bool
isLeapYear year =
  let
      divisibleBy n = year % n == 0
  in
      divisibleBy 400 || (divisibleBy 4 && not (divisibleBy 100))
