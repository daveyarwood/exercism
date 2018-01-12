module BookKeeping
  VERSION = 4
end

class Squares
  def initialize(n)
    @n = n
  end

  def sum_of_squares
    (0..@n).reduce {|sum, x| sum + x**2}
  end

  def square_of_sum
    (0..@n).reduce(:+) ** 2
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
