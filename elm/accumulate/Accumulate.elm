module Accumulate exposing (..)

accumulate : (a -> a) -> List a -> List a
accumulate f coll =
  case coll of
    []    -> []
    x::xs -> (f x) :: accumulate f xs

