class Complement {
  def DNA_TO_RNA = [G: 'C', C: 'G', T: 'A', A: 'U']
                   .withDefault { throw new IllegalArgumentException() }

  String ofDNA(String dna) {
    dna.collect { DNA_TO_RNA[it] }.join()
  }
}
