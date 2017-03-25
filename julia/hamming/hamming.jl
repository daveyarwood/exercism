function distance(s1::AbstractString, s2::AbstractString)
  if endof(s1) != endof(s2)
    throw(ArgumentError("Strands not the same length."))
  end

  count(zip(s1, s2)) do tuple
    a, b = tuple
    a != b
  end
end
