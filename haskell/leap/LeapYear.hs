module LeapYear where

isLeapYear :: Int -> Bool
isLeapYear year = divisibleBy 400 || ((divisibleBy 4) && not (divisibleBy 100))
                  where divisibleBy n = year `mod` n == 0
