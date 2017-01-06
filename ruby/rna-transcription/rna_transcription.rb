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

  def Complement.of_dna(strand)
    strand.each_char.with_object('') do |dna, rna|
      nucleotide = DNA_TO_RNA[dna]
      return '' unless nucleotide
      rna << nucleotide
    end
  end
end
