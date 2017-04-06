import std.conv;
import std.stdio;

string convert(int n) {
  char[] result;

  if (n % 3 == 0) {
    result = result ~ "Pling";
  }

  if (n % 5 == 0) {
    result = result ~ "Plang";
  }

  if (n % 7 == 0) {
    result = result ~ "Plong";
  }

  if (result.length == 0) {
    return to!string(n);
  } else {
    return result.idup;
  }
}

void main() {
    assert(convert(1) == "1");
    assert(convert(3) == "Pling");
    assert(convert(5) == "Plang");
    assert(convert(7) == "Plong");
    assert(convert(6) == "Pling");
    assert(convert(9) == "Pling");
    assert(convert(10) == "Plang");
    assert(convert(14) == "Plong");
    assert(convert(15) == "PlingPlang");
    assert(convert(21) == "PlingPlong");
    assert(convert(25) == "Plang");
    assert(convert(35) == "PlangPlong");
    assert(convert(49) == "Plong");
    assert(convert(52) == "52");
    assert(convert(105) == "PlingPlangPlong");

    writeln("All tests passed");
}
