module LeapYear where

isLeapYear :: Int -> Bool
isLeapYear year = year `isDivisibleBy` 400 ||
                  ((year `isDivisibleBy` 4) && not (year `isDivisibleBy` 100))
                  where year `isDivisibleBy` n = year `mod` n == 0
