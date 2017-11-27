class Hexadecimal
  VALUES =
    '0': 0
    '1': 1
    '2': 2
    '3': 3
    '4': 4
    '5': 5
    '6': 6
    '7': 7
    '8': 8
    '9': 9
    'a': 10
    'b': 11
    'c': 12
    'd': 13
    'e': 14
    'f': 15

  constructor: (@string) ->

  toDecimal: () ->
    values = @string.split('').map (character) -> VALUES[character]
    return 0 if values.some (v) -> v == undefined
    values.reverse().reduce ((sum, value, index) ->
      sum + value * Math.pow(16, index)),
      0

module.exports = Hexadecimal
