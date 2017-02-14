import algorithm
import math

type TriangleType* = enum tkEquilateral, tkIsosceles, tkScalene

proc validateTriangle(a: float, b: float, c: float): void =
  let
    sortedSizes: seq[float] = sorted(@[a, b, c], system.cmp[float])
    a: float = sortedSizes[0]
    b: float = sortedSizes[1]
    c: float = sortedSizes[2]

  if (a.classify == fcNaN) or (b.classify == fcNaN) or (c.classify == fcNaN):
    raise newException(ValueError, "Each side must be a number.")

  if (a <= 0) or (b <= 0) or (c <= 0):
    raise newException(ValueError, "Each side must be greater than 0.")

  if (a + b) <= c:
    raise newException(ValueError, "This triangle violates triangle equality.")

proc kind*(a: float, b: float, c: float): TriangleType =
  validateTriangle(a, b, c)

  if (a == b) and (b == c):
    return tkEquilateral
  elif (a == b) or (b == c) or (a == c):
    return tkIsosceles
  else:
    return tkScalene

proc kind*(a: int, b: int, c: int): TriangleType =
  return kind(float(a), float(b), float(c))
