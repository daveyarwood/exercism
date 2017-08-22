class Trinary
  constructor: (@string) ->

  toDecimal: () ->
    @string.split('').reverse().reduce ((value, character, index) ->
      if character in ['0', '1', '2']
        value + Number(character) * Math.pow(3, index)
      else
        return 0),
      0

module.exports = Trinary
