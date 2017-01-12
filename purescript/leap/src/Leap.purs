module Leap (isLeapYear) where

import Prelude

divBy :: Int -> Int -> Boolean
divBy year n = year `mod` n == 0

isLeapYear :: Int -> Boolean
isLeapYear year = divBy year 400 || (divBy year 4 && not divBy year 100)
