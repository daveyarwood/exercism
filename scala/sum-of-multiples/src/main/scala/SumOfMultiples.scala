object SumOfMultiples {
  def isMultipleOfAny(n: Int, factors: Set[Int]): Boolean = {
    factors.exists(n % _ == 0)
  }

  def sumOfMultiples(factors: Set[Int], limit: Int): Int = {
    (1 until limit).view.filter(isMultipleOfAny(_, factors)).sum
  }
}

