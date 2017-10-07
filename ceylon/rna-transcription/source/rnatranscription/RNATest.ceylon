import ceylon.test { ... }

// Tests adapted from problem-specifications version 1.0.1
{[String, String|Null]*} cases => {
  // empty strand
  ["",                         ""],
  // single C nucleotide strand
  ["C",                       "G"],
  // single G nucleotide strand
  ["G",                       "C"],
  // single A nucleotide strand
  ["A",                       "U"],
  // single T nucleotide strand
  ["T",                       "A"],
  // longer strand
  ["ACGTGGTCTTAA", "UGCACCAGAAUU"],
  // strand with DNA nucleotides
  ["U",                      null],
  // strand with invalid nucleotides
  ["XCGFGGTDTTAA",           null],
  // strand with invalid nucleotides after the first nucleotide
  ["ACGTFGTBTEAA",           null]
};

test
parameters(`value cases`)
void testHamming(String dna, String|Null expected) {
  if (exists expected) {
    assertEquals(transcription(dna), expected);
  } else if (!is Error result = transcription(dna)) {
    fail("should have errored, but got ``result``");
  }
}
