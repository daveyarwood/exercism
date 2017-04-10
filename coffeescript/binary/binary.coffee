class Binary
  constructor: (@string) ->

  toDecimal: () ->
    characters = @string.split('').reverse().map (character, index) ->
      [character, Math.pow(2, index)]

    characters.reduce ((value, [character, multiplier]) ->
      digit = if character in ['0', '1'] then Number(character) else 0
      value + digit * multiplier),
      0

module.exports = Binary
