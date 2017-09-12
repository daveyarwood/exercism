module Pangram (isPangram) where

import Data.List (all, elem)
import Data.String (toCharArray, toLower)

isPangram :: String -> Boolean
isPangram sentence =
  let
    -- ('a'..'z') doesn't work... apparently PureScript doesn't support
    -- character ranges like Haskell does
    alphabet = toCharArray "abcdefghijklmnopqrstuvwxyz"
    containsLetter letter = letter `elem` (toCharArray (toLower sentence))
  in
    all containsLetter alphabet

