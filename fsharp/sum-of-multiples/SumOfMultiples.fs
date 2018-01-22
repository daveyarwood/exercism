module SumOfMultiples

let sumOfMultiples (numbers: int list) (upperBound: int): int =
  [1 .. upperBound - 1]
  |> List.filter (fun n -> List.exists (fun x -> n % x = 0) numbers)
  |> List.sum
