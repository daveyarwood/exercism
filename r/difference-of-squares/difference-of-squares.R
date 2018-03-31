square_of_sum <- function(n) {
  Reduce(sum, 1:n) ** 2
}

sum_of_squares <- function(n) {
  Reduce(function(acc, x) acc + x ** 2, 1:n)
}

difference_of_squares <- function(n) {
  square_of_sum(n) - sum_of_squares(n)
}
