struct Year {
  let calendarYear: Int

  var isLeapYear: Bool {
    return divisible_by(400) || (divisible_by(4) && !divisible_by(100))
  }

  private func divisible_by(_ n: Int) -> Bool {
    return self.calendarYear % n == 0
  }
}
