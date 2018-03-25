class Year {
  var year: Int
  var isLeapYear: Bool {
    get {
      return divisible_by(400) || (divisible_by(4) && !divisible_by(100))
    }
  }

  init(calendarYear year: Int) {
    self.year = year
  }

  private func divisible_by(_ n: Int) -> Bool {
    return self.year % n == 0
  }
}
