class Luhn
  constructor: (n) ->
    @digits = n.toString().split('').map (digit) -> Number(digit)

    # The purpose of this isn't really clear from the README and tests.
    # AFAICT, the value is supposed to be the last digit. ¯\_(ツ)_/¯
    @checkDigit = @digits[@digits.length - 1]

    # Step 1: double every second digit, starting from the right. If doubling
    # the number results in a number > 9, subtract 9.
    reversed = @digits[..].reverse()
    for i in [0 .. @digits.length - 1] when i % 2 == 1
      doubled = reversed[i] * 2
      reversed[i] = if doubled > 9 then doubled - 9 else doubled
    @addends = reversed[..].reverse()

    # Step 2: sum all the digits
    @checksum = @addends.reduce (sum, x) -> sum + x

    # Step 3. if the result is evenly divisible by 10, it's valid
    @valid = @checksum % 10 == 0

module.exports = Luhn
