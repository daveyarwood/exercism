open Core

let squared n = n * n

let square_of_sum n =
  List.range 1 (n + 1)
  |> List.fold_left ~f:(+) ~init:0
  |> squared

let sum_of_squares n =
  List.range 1 (n + 1)
  |> List.fold_left ~f:(fun sum x -> sum + (squared x)) ~init:0

let difference_of_squares n =
  (square_of_sum n) - (sum_of_squares n)
