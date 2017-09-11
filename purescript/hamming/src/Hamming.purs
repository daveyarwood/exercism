module Hamming (distance) where

import Prelude
import Data.Array (zip)
import Data.Foldable (foldl)
import Data.Maybe (Maybe(Just, Nothing))
import Data.String (length, toCharArray)
import Data.Tuple (fst, snd)

distance :: String -> String -> Maybe Int
distance x y
  | length x /= length y = Nothing
  | otherwise = Just (foldl (\acc pair -> if (fst pair) /= (snd pair)
                                          then acc + 1
                                          else acc)
                            0
                            (zip (toCharArray x) (toCharArray y)))
