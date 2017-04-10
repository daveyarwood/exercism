class Binary
  constructor: (@string) ->

  toDecimal: () ->
    @string.split('').reverse().reduce ((value, character, index) ->
      digit = if character in ['0', '1'] then Number(character) else 0
      value + digit * Math.pow(2, index)),
      0

module.exports = Binary
