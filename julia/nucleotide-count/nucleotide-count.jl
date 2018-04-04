function count_nucleotides(strand::AbstractString)
  result = Dict{Char,Int64}('G' => 0, 'C' => 0, 'T' => 0, 'A' => 0)
  for nucleotide in strand
    try
      result[nucleotide] += 1
    catch e
      if isa(e, KeyError)
        # As required by the tests.
        throw(ErrorException(e.msg))
      else
        throw(e)
      end
    end
  end
  result
end
