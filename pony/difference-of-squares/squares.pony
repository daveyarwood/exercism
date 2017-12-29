use "collections"

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

  // Applies `each_fn` to every integer in the range from 1 through `n`, applies
  // `total_fn` to the sum of the results, and returns that result.
  fun calculate(n: USize, each_fn: USizeFn val, total_fn: USizeFn val): USize =>
    var sum: USize = 0
    for num in Range(1, n + 1) do
      sum = sum + each_fn(num)
    end
    total_fn(sum)

