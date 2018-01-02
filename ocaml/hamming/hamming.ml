open Core

type nucleotide = A | C | G | T

let hamming_distance a b =
  let pairDiffers (x, y) = x <> y in
    match List.zip a b with
    | None       -> None
    | Some pairs -> Some(List.count ~f:pairDiffers pairs)

