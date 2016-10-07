class InvalidNucleotideError < StandardError; end

module BookKeeping
  VERSION = 4
end

module Complement
  DNA_TO_RNA = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}

  def Complement.of_dna(strand)
    strand.chars.map do |nucleotide|
      DNA_TO_RNA[nucleotide] or raise InvalidNucleotideError
    end.join
  rescue InvalidNucleotideError
    ''
  end
end
