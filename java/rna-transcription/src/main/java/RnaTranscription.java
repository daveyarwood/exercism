public class RnaTranscription {

    public Character dnaToRna(Character c) {
      switch(c) {
        case 'G': return 'C';
        case 'C': return 'G';
        case 'T': return 'A';
        case 'A': return 'U';
        default:
          throw new IllegalArgumentException("Invalid DNA nucleotide: " + c);
      }
    }

    public String transcribe(String dnaStrand) {
      return dnaStrand.chars()
                      .map(c -> dnaToRna((char)c))
                      .collect(StringBuilder::new,
                               StringBuilder::appendCodePoint,
                               StringBuilder::append)
                      .toString();
    }
}
