import ceylon.test { ... }

{[String, String, Integer?]*} cases => {
  ["A", "A", 0],
  ["GGACTGA", "GGACTGA", 0],
  ["A", "G", 1],
  ["AG", "CT", 2],
  ["AT", "CT", 1],
  ["GGACG", "GGTCG", 1],
  ["ACCAGGG", "ACTATGG", 2],
  ["AGA", "AGG", 1],
  ["AGG", "AGA", 1],
  ["TAG", "GAT", 2],
  ["GATACA", "GCATAA", 4],
  ["GGACGGATTCTG", "AGGACGGATTCT", 9],
  ["", "", 0],
  ["AATG", "AAA", null],
  ["ATA", "AGTG", null]
};

test
parameters(`value cases`)
void testHamming(String s1, String s2, Integer? expected) {
  value result = distance(s1, s2);
  if (exists expected) {
    assertEquals(result, expected);
  } else if (!is Error result) {
    fail("should have errored, but got ``result``");
  }
}
