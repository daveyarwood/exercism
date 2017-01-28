module rna_transcription;

import std.exception : assertThrown;
import std.stdio;
import std.string;

const string DNA = "CGTA";
const string RNA = "GCAU";

void validateDna(string dna) {
  foreach(dchar c; dna) {
    if (!inPattern(c, DNA)) {
      throw new Exception(format("Invalid DNA character: %c", c));
    }
  }
}

string dnaComplement(string dna) {
  validateDna(dna);
  return tr(dna, DNA, RNA);
}

void main() {
    assert(dnaComplement("C") == "G");
    assert(dnaComplement("G") == "C");
    assert(dnaComplement("T") == "A");
    assert(dnaComplement("A") == "U");

    assert(dnaComplement("ACGTGGTCTTAA") == "UGCACCAGAAUU");

    assertThrown(dnaComplement("U"));
    assertThrown(dnaComplement("XXX"));
    assertThrown(dnaComplement("ACGTXXXCTTAA"));

    writeln("All tests passed");
}
