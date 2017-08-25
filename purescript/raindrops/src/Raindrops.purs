module Raindrops (raindrops) where

import Data.Foldable (foldl)
import Prelude

data Rule = Tuple Int String

rules :: Array Rule
rules = [
  Tuple 3 "Pling",
  Tuple 5 "Plang",
  Tuple 7 "Plong"
]

raindrops :: Int -> String
raindrops n =
  let
    reducer acc (Tuple factor sound)
      | n `mod` factor == 0 = acc <> sound
      | otherwise = acc
    sounds = foldl reducer "" rules
  in
    if sounds == "" then show n else sounds
