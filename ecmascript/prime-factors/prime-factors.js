// A cache of known prime numbers. This is both a performance optimization
// (subsequent runs will benefit from already-generated primes) and an
// implementation detail.
const knownPrimes = [2, 3];

class Prime {
  // Generates the next prime number after the last one we generated.
  static generatePrime() {
    const [lastPrime] = knownPrimes.slice(-1);

    let candidate = lastPrime + 2; // only checking odd numbers

    // Check candidate, candidate + 2, candidate + 4, etc. until we find a new
    // prime number.
    while (!knownPrimes.every(prime => candidate % prime != 0)) {
      candidate += 2;
    }

    knownPrimes.push(candidate);
  }

  // Returns the nth prime number (0-indexed), generating more as needed.
  static nth(n) {
    while (knownPrimes.length <= n) { this.generatePrime(); }
    return knownPrimes[n];
  }
}

class PrimeFactors {
  for(n) {
    const factors = [];
    let primeIndex = 0;
    let divisor = Prime.nth(primeIndex);

    // Keep factoring `n` down until it's 1.
    while (n > 1) {
      // Find the first prime number that `n` divides evenly.
      while (n % divisor != 0) {
        primeIndex++;
        divisor = Prime.nth(primeIndex);
      }

      // Found a factor. Add it to the list, divide by it, and keep going.
      factors.push(divisor);
      n /= divisor;
    }

    return factors;
  }
}

export default PrimeFactors;
