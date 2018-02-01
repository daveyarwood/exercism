class Triangle
  def initialize(@sides : Array(Int32)); end

  def equilateral? : Bool
    return false if violates_triangle_inequality?
    @sides.uniq.size == 1
  end

  def isosceles? : Bool
    return false if violates_triangle_inequality?
    1 <= @sides.uniq.size <= 2
  end

  def scalene? : Bool
    return false if violates_triangle_inequality?
    @sides.uniq.size == 3
  end

  def violates_triangle_inequality? : Bool
    @sides.size != 3 ||
    @sides.any? {|x| x == 0} ||
    @sides.permutations.any? {|sides| sides[0] + sides[1] < sides[2]}
  end
end
