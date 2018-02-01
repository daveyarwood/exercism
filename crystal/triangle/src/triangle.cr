class Triangle
  @sides : Array(Int32)

  def initialize(sides : Array(Int32))
    @sides = sides.sort
  end

  def equilateral?
    return false if violates_triangle_inequality?
    @sides.uniq.size == 1
  end

  def isosceles?
    return false if violates_triangle_inequality?
    1 <= @sides.uniq.size <= 2
  end

  def scalene?
    return false if violates_triangle_inequality?
    @sides.uniq.size == 3
  end

  def violates_triangle_inequality?
    @sides.any? {|x| x == 0} ||
    @sides[0] + @sides[1] < @sides[2]
  end
end
