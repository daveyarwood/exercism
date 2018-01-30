use "collections"

primitive HammingDistance
  fun apply(a: String, b: String) : USize ? =>
    if a.size() != b.size() then error end
    var distance: USize = 0
    for i in Range(0, a.size()) do
      if a(i)? != b(i)? then distance = distance + 1 end
    end
    distance
