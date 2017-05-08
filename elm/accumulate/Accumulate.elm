module Accumulate exposing (..)

accumulate : (a -> b) -> List a -> List b
accumulate f coll =
  case coll of
    []    -> []
    x::xs -> (f x) :: accumulate f xs

