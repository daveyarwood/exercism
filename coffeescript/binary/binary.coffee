class Binary
  constructor: (@string) ->

  toDecimal: () ->
    @string.split('').reverse().reduce ((value, character, index) ->
      if character in ['0', '1']
        value + Number(character) * Math.pow(2, index)
      else
        return 0),
      0

module.exports = Binary
