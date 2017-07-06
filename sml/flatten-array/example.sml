datatype 'a nestedList = Leaf of 'a | Node of 'a nestedList list

fun flatten (Leaf n) = [n]
  | flatten (Node xs) = List.concat (map flatten xs)
