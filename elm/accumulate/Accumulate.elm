module Accumulate exposing (..)

accumulate f coll =
  case coll of
    []    -> []
    x::xs -> (f x) :: accumulate f xs

