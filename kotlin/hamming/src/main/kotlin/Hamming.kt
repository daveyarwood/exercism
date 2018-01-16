const val LENGTH_INEQUALITY = "left and right strands must be of equal length."

object Hamming {
  fun compute(a: String, b: String): Int {
    if (a.length == b.length)
      return a.zip(b).count { (x, y) -> x != y }
    else
      throw IllegalArgumentException(LENGTH_INEQUALITY)
  }
}
