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

  def Complement.of_dna(dna_strand)
    dna_strand.chars.each.with_object('') do |dna, rna|
      rna << (DNA_TO_RNA[dna] || (return ''))
    end
  end
end
