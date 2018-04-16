let identity n = n
let squared n = n * n

let calculate n each_fn total_fn =
  let rec map_sum = function
      0 -> 0
    | x -> (each_fn x) + (map_sum (x - 1))
  in
  total_fn (map_sum n)

let square_of_sum n = calculate n identity squared
let sum_of_squares n = calculate n squared identity
let difference_of_squares n = (square_of_sum n) - (sum_of_squares n)
