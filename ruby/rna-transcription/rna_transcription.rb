class InvalidNucleotideError < StandardError; end

module BookKeeping
  VERSION = 4
end

module Complement
  def Complement.lookup(nucleotide)
    case nucleotide
    when 'G'; 'C'
    when 'C'; 'G'
    when 'T'; 'A'
    when 'A'; 'U'
    else; ''
    end
  end

  def Complement.of_dna(dna)
    rna = dna.chars.map(&Complement.method(:lookup)).join
    dna.length == rna.length ? rna : ''
  end
end
