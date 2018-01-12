module BookKeeping
  VERSION = 4
end

class Squares
  def initialize(n)
    @range = 0..n
  end

  def sum_of_squares
    @range.reduce {|sum, x| sum + x**2}
  end

  def square_of_sum
    @range.reduce(:+) ** 2
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
