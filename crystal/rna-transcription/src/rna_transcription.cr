module RnaComplement
  DNA_TO_RNA = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def RnaComplement.of_dna(dna_strand)
    dna_strand.chars.map{ |dna| DNA_TO_RNA[dna] }.join
  end
end
