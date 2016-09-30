fun accumulate [] f = []
  | accumulate (x::xs) f = (f x) :: accumulate xs f
