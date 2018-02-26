module ScrabbleScore exposing (scoreWord)

import Dict exposing (Dict)

-- NB: I would prefer to work on the level of Chars instead of one-character
-- Strings -- that way, I would have an extra degree of certainty that
-- `letterScore` takes as input a single letter, not potentially a string
-- containing multiple letters.
--
-- Unfortunately, I wasn't able to find a way to convert a String into a List
-- Char in Elm. You can go the other way and turn a Char into a one-character
-- String via String.fromChar, but I'm not sure that there is an easy way to
-- convert a string into a list of its characters.
--
-- I imagine this is implementation-related. In Haskell, for instance, a string
-- is literally a list of the code points of its characters, so it makes sense
-- to work on the level of Chars. But there is no "character" type in
-- JavaScript; there are only strings. So my guess is that there is a
-- significant performance penalty to creating a Char for every character in a
-- string, and if that's the case, I can understand why they wouldn't provide us
-- with a core `String -> List Char` method that is inefficient.
--
-- So, doing what appears to be the idiomatic thing here and working with
-- one-character Strings instead of Chars.

letterScores : Dict String Int
letterScores =
  Dict.fromList
  [ ("A", 1)
  , ("E", 1)
  , ("I", 1)
  , ("O", 1)
  , ("U", 1)
  , ("L", 1)
  , ("N", 1)
  , ("R", 1)
  , ("S", 1)
  , ("T", 1)
  , ("D", 2)
  , ("G", 2)
  , ("B", 3)
  , ("C", 3)
  , ("M", 3)
  , ("P", 3)
  , ("F", 4)
  , ("H", 4)
  , ("V", 4)
  , ("W", 4)
  , ("Y", 4)
  , ("K", 5)
  , ("J", 8)
  , ("X", 8)
  , ("Q", 10)
  , ("Z", 10)
  ]

letterScore : String -> Int
letterScore letter =
  letter
  |> (flip Dict.get) letterScores
  |> Maybe.withDefault 0

scoreWord : String -> Int
scoreWord word =
  word
  |> String.toUpper
  |> String.split ""
  |> List.map letterScore
  |> List.sum
