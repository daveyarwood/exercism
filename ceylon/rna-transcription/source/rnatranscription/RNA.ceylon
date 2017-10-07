class Error() {}

Map<Character, Character> dnaToRna = map {
  'G'->'C',
  'C'->'G',
  'T'->'A',
  'A'->'U'
};

String|Error transcription(String dna) {
  String rna = String { for (c in dna) dnaToRna[c] else 'X' };
  if (rna.any('X'.equals)) {
    return Error();
  } else {
    return rna;
  }
}
