package;

class Leap {
  static function divBy(n: Int, year: Int) {
    return year % n == 0;
  }

  public static function isLeap(year: Int) : Bool {
    return divBy(400, year) || (divBy(4, year) && !divBy(100, year));
  }
}
