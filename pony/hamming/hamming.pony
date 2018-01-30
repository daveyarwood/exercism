use "collections"
use "itertools"

primitive HammingDistance
  fun apply(a: String, b: String) : USize ? =>
    if a.size() != b.size() then error end
    var pairs: Iter[(U8, U8)] = Iter[U8](a.values()).zip[U8](b.values())
    pairs.filter({(pair: (U8, U8)): Bool => pair._1 != pair._2}).count()
