use "collections"
use "itertools"

interface USizeFn
  fun apply(n: USize): USize

primitive Identity
  fun apply(n: USize): USize => n

primitive Square
  fun apply(n: USize): USize => n * n

primitive Squares
  fun square_of_sums(n: USize): USize => calculate(n, Identity, Square)
  fun sum_of_squares(n: USize): USize => calculate(n, Square, Identity)
  fun difference(n: USize):     USize => square_of_sums(n) - sum_of_squares(n)

  fun calculate(n: USize, each_fn: USizeFn val, total_fn: USizeFn val): USize =>
    // WIP (not submitted yet): attempting to do this in a more FP way. This
    // seems like it ought to do the trick, but for some reason, the compiled
    // program hangs indefinitely(?). Have I somehow introduced an infinite loop
    // here?
    var range: Iter[USize] = Iter[USize](Range(1, n + 1))
    total_fn(range.fold({(acc, n) => acc + each_fn(n)}, 0))
