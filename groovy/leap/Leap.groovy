class Leap {
  Integer year

  Leap(Integer y) {
    year = y
  }

  def divisibleBy(Integer n) {
    year % n == 0
  }

  def isLeapYear() {
    divisibleBy(400) || (divisibleBy(4) && !divisibleBy(100))
  }
}
