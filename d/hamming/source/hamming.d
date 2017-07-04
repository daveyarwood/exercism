module hamming;

import std.range : zip;
import std.algorithm.searching : count;

ulong distance(string a, string b) {
  if (a.length != b.length)
    throw new Exception("Strands must be the same length.");

  return zip(a, b).count!(pair => pair[0] != pair[1]);
}

unittest
{
  import std.exception : assertThrown;

  assert(distance("A", "A") == 0);
  assert(distance("A", "G") == 1);
  assert(distance("AG", "CT") == 2);
  assert(distance("AT", "CT") == 1);
  assert(distance("GGACG", "GGTCG") == 1);
  assertThrown(distance("AAAG", "AAA"));
  assertThrown(distance("AAA", "AAAG"));
  assert(distance("GATACA", "GCATAA") == 4);
  assert(distance("GGACGGATTCTG", "AGGACGGATTCT") == 9);

}
