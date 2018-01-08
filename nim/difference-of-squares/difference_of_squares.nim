import future, math, sequtils

proc sum(ns: seq[int]): int =
  ns.foldl(a + b)

proc squared(n: int): int =
  n.float.pow(2.0).int

proc square_of_sum*(n: int): int =
  lc[ x | ( x <- 0..n ), int ].sum.squared

proc sum_of_squares*(n: int): int =
  lc[ x.squared | ( x <- 0..n ), int ].sum

proc difference*(n: int): int =
  square_of_sum(n) - sum_of_squares(n)
