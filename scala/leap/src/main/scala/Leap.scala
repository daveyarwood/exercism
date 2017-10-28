object Leap {
  def leapYear(year: Int): Boolean = {
    def divBy(n: Int) = year % n == 0
    divBy(400) || (divBy(4) && !divBy(100))
  }
}
