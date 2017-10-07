# RNA Transcription

Given a DNA strand, return its RNA complement (per RNA transcription).

Both DNA and RNA strands are a sequence of nucleotides.

The four nucleotides found in DNA are adenine (**A**), cytosine (**C**),
guanine (**G**) and thymine (**T**).

The four nucleotides found in RNA are adenine (**A**), cytosine (**C**),
guanine (**G**) and uracil (**U**).

Given a DNA strand, its transcribed RNA strand is formed by replacing
each nucleotide with its complement:

* `G` -> `C`
* `C` -> `G`
* `T` -> `A`
* `A` -> `U`

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

Rosalind [http://rosalind.info/problems/rna](http://rosalind.info/problems/rna)

## Submitting Incomplete Solutions
It's possible to submit an incomplete solution so you can see how others have completed the exercise.
