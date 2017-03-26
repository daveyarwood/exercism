{Integer*} primesUpTo(Integer max) {
  variable Integer factor = 2;
  Array<Boolean> numbers = Array.ofSize(max + 1, true);

  while (factor * factor < max) {
    {Integer+} multiples = loop(factor * 2)(factor.plus);

    for (multiple in multiples.takeWhile((max + 1).largerThan)) {
      numbers[multiple] = false;
    }

    assert (exists nextFactor = numbers.indexed
                                       .skipWhile((n -> unmarked) => n <= factor)
                                       .find((n -> unmarked) => unmarked));
    factor = nextFactor.key;
  }

  return { for (n -> unmarked in numbers.indexed.skip(2)) if (unmarked) n };
}
