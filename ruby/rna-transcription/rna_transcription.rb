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
    dna_strand.chars.map do |dna|
      DNA_TO_RNA[dna] || (return '')
    end.join
  end
end
