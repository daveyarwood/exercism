object Leap {
  private def divBy(n: Int, year: Int): Boolean = {
    year % n == 0
  }

  def leapYear(year: Int): Boolean = {
    divBy(400, year) || (divBy(4, year) && !divBy(100, year))
  }
}
