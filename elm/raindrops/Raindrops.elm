module Raindrops exposing (raindrops)

rules = [(3, "Pling"), (5, "Plang"), (7, "Plong")]

sounds : Int -> List String
sounds n =
  let
      applicable = (\rule -> let (factor, _) = rule in n % factor == 0)
      drops = List.filter applicable  rules
  in
     List.map Tuple.second drops

raindrops : Int -> String
raindrops n =
  case (sounds n) of
    []     -> toString n
    sounds -> String.concat sounds

