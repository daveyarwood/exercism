module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n = if n <= 0 then Nothing else Just (collatzSteps n)

collatzSteps :: Integer -> Integer
collatzSteps n
  | n == 1 = 0
  | even n = 1 + (collatzSteps (n `div` 2))
  | odd n  = 1 + (collatzSteps ((3 * n) + 1))
