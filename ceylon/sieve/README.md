# Sieve

Use the Sieve of Eratosthenes to find all the primes from 2 up to a given number.

The Sieve of Eratosthenes is a simple, ancient algorithm for finding all
prime numbers up to any given limit. It does so by iteratively marking as
composite (i.e. not prime) the multiples of each prime,
starting with the multiples of 2.

Create your range, starting at two and continuing up to and including the given limit. (i.e. [2, limit])

The algorithm consists of repeating the following over and over:

- take the next available unmarked number in your list (it is prime)
- mark all the multiples of that number (they are not prime)

Repeat until you have processed each number in your range.

When the algorithm terminates, all the numbers in the list that have not
been marked are prime.

The wikipedia article has a useful graphic that explains the algorithm:
https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes

Notice that this is a very specific algorithm, and the tests don't check
that you've implemented the algorithm, only that you've come up with the
correct list of primes.

## Running Ceylon Tests

Before tests can be run, your code must be compiled via [`ceylon compile`](https://ceylon-lang.org/documentation/current/reference/tool/ceylon/subcommands/ceylon-compile.html).

We run tests with the [`ceylon test`](https://ceylon-lang.org/documentation/reference/tool/ceylon/subcommands/ceylon-test.html) command.

`ceylon test` expects a module name to run the tests on.
In the Ceylon track, each exercise has just a single module.

Therefore, you can run the tests with:

```bash
ceylon compile && ceylon test $(basename source/*)
```

## Source

Sieve of Eratosthenes at Wikipedia [http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes](http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes)

## Submitting Incomplete Problems
It's possible to submit an incomplete solution so you can see how others have completed the exercise.

