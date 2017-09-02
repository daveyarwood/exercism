object SumOfMultiples {
  def sumOfMultiples(factors: Set[Int], limit: Int): Int = {
    factors.flatMap(n => n until limit by n).sum
  }
}

