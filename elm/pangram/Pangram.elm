module Pangram exposing (..)

import String exposing (contains, fromChar, toLower, all)

alphabet : String
alphabet = "abcdefghijklmnopqrstuvwxyz"

isPangram : String -> Bool
isPangram str =
  let hasLetter letter =
    contains (fromChar letter) (toLower str)
  in
    all hasLetter alphabet
