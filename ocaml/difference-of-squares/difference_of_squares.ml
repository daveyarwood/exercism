let identity n = n
let squared n = n * n

let calculate_fn each_fn total_fn =
  let rec map_sum = function
      0 -> 0
    | x -> (each_fn x) + (map_sum (x - 1))
  in
  fun n -> total_fn (map_sum n)

let square_of_sum = calculate_fn identity squared
let sum_of_squares = calculate_fn squared identity
let difference_of_squares n = (square_of_sum n) - (sum_of_squares n)
