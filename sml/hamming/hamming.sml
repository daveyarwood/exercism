exception NonEqualLengthStringsFound;

fun compare (a: char, b: char, acc: int): int =
  acc + (if a <> b then 1 else 0)

fun hamming (s1: string, s2: string): int =
  ListPair.foldlEq compare 0 (String.explode s1, String.explode s2)
  handle UnequalLengths => raise NonEqualLengthStringsFound
