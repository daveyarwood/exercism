class PrimeGenerator implements Iterable {
  Iterator numbersToCheck = {
    // 1 is not a prime number, but adding 1 to it gives us the first prime
    // number, 2.
    int current = 1
    // Then we'll add 1 to that to get 3, and after that, we'll start checking
    // only odd numbers (interval = 2) as an optimization.
    int interval = 1

    [ // Generates an infinite range of integers: 2, 3, 5, 7, 9, 11, etc.
      hasNext: { true },

      next: {
        if (current >= 3) interval = 2
        current += interval
        current
      }
    ] as Iterator
  }()

  List<Integer> knownPrimes = []

  boolean isPrime(int n) {
    knownPrimes.every { n % it != 0 }
  }

  @Override
  Iterator iterator() {
    [ // Infinitely generates prime numbers.
      hasNext: { true },

      next: {
        int prime = numbersToCheck.find { isPrime(it) }
        knownPrimes.add(prime)
        prime
      }
    ] as Iterator
  }
}

class NthPrime {
  static nth(int n) {
    if (n > 0)
      return new PrimeGenerator().getAt(n - 1)
    else
      throw new ArithmeticException("We're starting at 1 for reasons.")
  }
}
