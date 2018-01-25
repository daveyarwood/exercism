class PrimeGenerator implements Iterable {
  List<Integer> primes = []
  // 1 is not a prime number, but adding 1 to it gives us the first prime
  // number, 2.
  int current = 1
  // Then we'll add 1 to that to get 3, and after that, we'll start checking
  // only odd numbers (interval = 2) as an optimization.
  int interval = 1

  @Override
  Iterator iterator() {
    [
      hasNext: { true }, // infinitely generates prime numbers
      next: {
        if (current >= 3) interval = 2

        current += interval
        while (primes.any { current % it == 0 })
          current += interval

        primes.add(current)
        current
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
