class Prime
  # A cache of known prime numbers. This is both a performance optimization
  # (subsequent runs will benefit from already-generated primes) and an
  # implementation detail.
  @knownPrimes: [2, 3]

  # Generates the next prime number after the last one we generated.
  @generatePrime: ->
    [..., lastPrime] = @knownPrimes
    candidate = lastPrime + 2 # only checking odd numbers
    candidate += 2 until @knownPrimes.every ((prime) -> candidate % prime != 0)
    @knownPrimes.push candidate

  # Returns the nth prime, 1-indexed.
  @nth: (n) ->
    throw "Prime is not possible" if n < 1
    @generatePrime() while @knownPrimes.length < n
    @knownPrimes[n - 1]

module.exports = Prime

