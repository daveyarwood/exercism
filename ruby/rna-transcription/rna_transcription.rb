module BookKeeping
  VERSION = 4
end

module Complement
  DNA_TO_RNA = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }
  DNA_TO_RNA.default ''

  def Complement.of_dna(dna_strand)
    rna_strand = dna_strand.chars.map{ |dna| DNA_TO_RNA[dna] }.join
    dna_strand.length == rna_strand.length ? rna_strand : ''
  end
end
