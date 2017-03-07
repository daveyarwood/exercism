import algorithm
import math
import sequtils
import strutils

# I wish you could just cast a char to a string in Nim.
proc toString(ch: char): string =
  repeat(ch, 1)

proc parseBinaryDigit(char: char): int =
  if not {'0'..'1'}.contains(char):
    raise newException(ValueError, "A binary digit must be 0 or 1.")

  parseInt(char.toString())


proc binary*(str: string): int =
  var sum = 0
  var power = -1.0

  for char in toSeq(str.items).reversed():
    power = power + 1
    var digit = parseBinaryDigit(char)
    var digitValue = (digit.float * 2.pow(power)).int
    sum = sum + digitValue
  sum
