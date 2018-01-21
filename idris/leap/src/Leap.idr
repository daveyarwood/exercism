module Leap

export
isLeap : Int -> Bool
isLeap year =
  divisibleBy 400 || (divisibleBy 4 && not (divisibleBy 100)) where
    divisibleBy : Int -> Bool
    divisibleBy n = year `mod` n == 0
