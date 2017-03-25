function distance(s1::AbstractString, s2::AbstractString)
  if endof(s1) != endof(s2)
    throw(ArgumentError("Strands not the same length."))
  end

  count(pair -> pair[1] != pair[2], zip(s1, s2))
end
