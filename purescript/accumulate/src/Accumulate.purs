module Accumulate (accumulate) where
import Data.List

accumulate :: forall a b. (a -> b) -> List a -> List b
accumulate f Nil = Nil
accumulate f (x:xs) = (f x) : accumulate f xs
