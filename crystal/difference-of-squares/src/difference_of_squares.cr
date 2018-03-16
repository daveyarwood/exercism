module Squares
  def self.sum_of_squares(n)
    (0..n).reduce {|sum, x| sum + x**2}
  end

  def self.square_of_sum(n)
    (0..n).reduce {|sum, x| sum + x} ** 2
  end

  def self.difference_of_squares(n)
    square_of_sum(n) - sum_of_squares(n)
  end
end
