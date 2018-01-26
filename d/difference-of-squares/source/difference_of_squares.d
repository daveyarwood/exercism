module difference_of_squares;
import std.algorithm;
import std.math;
import std.range;
import std.stdio;

struct Squares {
  private int end;

  this(int n) {
    end = n;
  }

  @property int squareOfSum() {
    return iota(1, end + 1).sum().pow(2);
  }

  @property int sumOfSquares() {
    return iota(1, end + 1).map!(n => n.pow(2)).sum();
  }

  @property int difference() {
    return squareOfSum - sumOfSquares;
  }
}

Squares squares(int n) {
  return Squares(n);
}

unittest {
  assert(squares(5).squareOfSum == 225);
  assert(squares(10).squareOfSum == 3_025);
  assert(squares(100).squareOfSum == 25_502_500);

  assert(squares(5).sumOfSquares == 55);
  assert(squares(10).sumOfSquares == 385);
  assert(squares(100).sumOfSquares == 338_350);

  assert(squares(0).difference == 0);
  assert(squares(5).difference == 170);
  assert(squares(10).difference == 2_640);
  assert(squares(100).difference == 25_164_150);
}
