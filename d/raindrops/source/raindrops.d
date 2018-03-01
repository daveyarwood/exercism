import std.container;
import std.conv;
import std.stdio;
import std.typecons;

alias Rule = Tuple!(int, "factor", string, "sound");

Rule[] rules = [
  Rule(3, "Pling"),
  Rule(5, "Plang"),
  Rule(7, "Plong")
];

string convert(int n) {
  string result;

  foreach (Rule r; rules)
    if (n % r.factor == 0)
      result ~= r.sound;

  return result == "" ? n.to!string : result;
}

unittest
{

{
  assert(convert(1) == "1");
}

{
  assert(convert(3) == "Pling");
}

{
  assert(convert(5) == "Plang");
}

{
  assert(convert(7) == "Plong");
}

{
  assert(convert(6) == "Pling");
}

{
  assert(convert(9) == "Pling");
}

{
  assert(convert(10) == "Plang");
}

{
  assert(convert(14) == "Plong");
}

{
  assert(convert(15) == "PlingPlang");
}

{
  assert(convert(21) == "PlingPlong");
}

{
  assert(convert(25) == "Plang");
}

{
  assert(convert(35) == "PlangPlong");
}

{
  assert(convert(49) == "Plong");
}

{
  assert(convert(52) == "52");
}

{
  assert(convert(105) == "PlingPlangPlong");
}
}

