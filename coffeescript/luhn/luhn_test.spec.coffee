Luhn = require './luhn'

describe 'Luhn', ->

  it "check digit", ->
    luhn = new Luhn(34567)
    expect(luhn.checkDigit).toEqual(7)

  it "check digit again", ->
    luhn = new Luhn(91370)
    expect(luhn.checkDigit).toEqual(0)

  it "addends", ->
    luhn = new Luhn(12121)
    expect(luhn.addends).toEqual([1, 4, 1, 4, 1])

  it "too large added", ->
    luhn = new Luhn(8631)
    expect(luhn.addends).toEqual([7, 6, 6, 1])

  it "checksum", ->
    luhn = new Luhn(4913)
    expect(luhn.checksum).toEqual(22)

  it "checksum again", ->
    luhn = new Luhn(201773)
    expect(luhn.checksum).toEqual(21)

  it "invalid number", ->
    luhn = new Luhn(738)
    expect(luhn.valid).toEqual(false)

  it "valid number", ->
    luhn = new Luhn(8739567)
    expect(luhn.valid).toEqual(true)

  # The README doesn't explain what `Luhn.create` is supposed to do.
  #
  # Judging by the example solution...
  #
  # https://github.com/exercism/coffeescript/blob/d1fd91151d2d1dfa86a8d3fdc6fcc81af2807395/exercises/luhn/example.coffee#L35-L46
  #
  # ...it's some sort of algorithm for generating a number that is valid by the
  # Luhn algorithm, given a number as a starting point.
  #
  # Of note, the upstream test suite has changed:
  # https://github.com/exercism/coffeescript/issues/69
  #
  # and the new tests don't include anything like this.
  #
  # So, commenting out these test cases.

  # it "create valid number", ->
  #   number = Luhn.create(123)
  #   expect(number).toEqual(1230)

  # it "create other valid number", ->
  #   number = Luhn.create(873956)
  #   expect(number).toEqual(8739567)

  # it "create yet another valid number", ->
  #   number = Luhn.create(837263756)
  #   expect(number).toEqual(8372637564)
