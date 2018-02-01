class Triangle
  # side lengths
  @a : Int32
  @b : Int32
  @c : Int32

  def initialize(sides : Array(Number))
    @a, @b, @c = sides
  end

  def equilateral?
    return false if violates_triangle_inequality?
    @a == @b == @c
  end

  def isosceles?
    return false if violates_triangle_inequality?
    @a == @b || @b == @c || @c == @a
  end

  def scalene?
    return false if violates_triangle_inequality?
    @a != @b != @c != @a
  end

  def violates_triangle_inequality?
    @a == 0 || @b == 0 || @c == 0 ||
    @a + @b < @c || @b + @c < @a || @c + @a < @b
  end
end
