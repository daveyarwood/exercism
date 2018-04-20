module TwelveDays exposing (recite)
import Array exposing (Array)

ordinal : Int -> String
ordinal day = case day of
  1 -> "first"
  2 -> "second"
  3 -> "third"
  4 -> "fourth"
  5 -> "fifth"
  6 -> "sixth"
  7 -> "seventh"
  8 -> "eighth"
  9 -> "ninth"
  10 -> "tenth"
  11 -> "eleventh"
  12 -> "twelfth"
  _  -> "not implemented"

prelude : Int -> String
prelude day = "On the " ++
              ordinal day ++
              " day of Christmas my true love gave to me, "

gift : Int -> String
gift day = case day of
  1  -> "a Partridge in a Pear Tree"
  2  -> "two Turtle Doves"
  3  -> "three French Hens"
  4  -> "four Calling Birds"
  5  -> "five Gold Rings"
  6  -> "six Geese-a-Laying"
  7  -> "seven Swans-a-Swimming"
  8  -> "eight Maids-a-Milking"
  9  -> "nine Ladies Dancing"
  10 -> "ten Lords-a-Leaping"
  11 -> "eleven Pipers Piping"
  12 -> "twelve Drummers Drumming"
  _ -> "not implemented"

gifts : Int -> String
gifts day = case day of
  1   -> gift 1
  day -> (List.range 2 day
          |> List.reverse
          |> List.map gift
          |> String.join ", ")
         ++ ", and " ++ gift 1

verse : Int -> String
verse day = prelude day ++ gifts day ++ "."

recite : Int -> Int -> List String
recite start stop = List.range start stop |> List.map verse
