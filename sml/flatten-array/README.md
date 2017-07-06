# Flatten Array

Take a nested list and return a single flattened list with all values except nil/null.

The challenge is to write a function that accepts an arbitrarily-deep nested list-like structure and returns a flattened structure without any nil/null values.
 
For Example

input: [1,[2,3,null,4],[null],5]

output: [1,2,3,4,5]


## Setup

You will need an SML interpreter to solve these problems. There are several popular implementations
[MLton](http://mlton.org/), [SML/NJ](http://www.smlnj.org/), and [PolyML](http://www.polyml.org/). For reference, the problems are being developed using PolyML.

## Testing Note: your problem implementation must be in a file named example.sml

1. cd into your problem directory
2. use the test_<problem-name>.sml file with the SML interpreter of your choice (3 listed above)
3. verify that the allTestsPass variable has a true value
   * if so, congrats
   * if not, something is wrong with your implementation of the problem (or the test cases :|)

#### Example:

     cd ~/exercism/sml/accumulate
     poly
     Poly/ML 5.2 Release
     > use "test_accumulate.sml";
     val accumulate = fn : 'a list -> ('a -> 'b) -> 'b list
     val it = () : unit
     val test_cases =
         [([], fn, []), ([1, 2, 3], fn, [1, 4, 9]), ([1, 2, 3], fn, [1, 8, 27]),
          ([1, 2, 3], fn, [2, 3, 4]), ([1, 2, 3], fn, [0, 1, 2])]
      : (int list * (int -> int) * int list) list
     val allTestsPass = true : bool
     val run_tests = fn : ('a list * ('a -> ''b) * ''b list) list -> bool list
     val it = () : unit
     (* inspect allTestsPass variable for true or false*)

## Source

Interview Question [https://reference.wolfram.com/language/ref/Flatten.html](https://reference.wolfram.com/language/ref/Flatten.html)

## Submitting Incomplete Solutions
It's possible to submit an incomplete solution so you can see how others have completed the exercise.

