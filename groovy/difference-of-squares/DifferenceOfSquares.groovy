class DifferenceOfSquares {
  int n

  def DifferenceOfSquares(num) {
    n = num
  }

  def squareOfSums() {
    (1..n).sum {it} ** 2
  }

  def sumOfSquares() {
    (1..n).sum {it**2}
  }

  def difference() {
    squareOfSums() - sumOfSquares()
  }
}
