module SumOfMultiples (sumOfMultiples) where

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit =
  let
    isMultiple n = any (\x -> n `mod` x == 0) factors
    multiples = filter isMultiple [1 .. limit - 1]
  in
    sum multiples
