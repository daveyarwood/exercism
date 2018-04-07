function count_nucleotides(strand::AbstractString)
  result = Dict('G' => 0, 'C' => 0, 'T' => 0, 'A' => 0)
  for nucleotide in strand
    nucleotide in keys(result) || error("Invalid nucleotide: $nucleotide")
    result[nucleotide] += 1
  end
  result
end
