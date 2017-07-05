function aliquotSum(n) {
  return Array.from(Array(Math.floor(n / 2) + 1))
              .map((_, i) => i)
              .reduce(((sum, i) => n % i == 0 ? sum + i : sum), 0);
}

class PerfectNumbers {
  classify(n) {
    if (n <= 0) throw "Classification is only possible for natural numbers.";

    let as = aliquotSum(n);

    if (as < n)  return 'deficient';
    if (as > n)  return 'abundant';
    if (as == n) return 'perfect';
  }
}

export default PerfectNumbers;
