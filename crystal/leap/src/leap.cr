struct Int
  def divisible_by(n)
    self % n == 0
  end
end

module Year
  def self.leap?(year)
    year.divisible_by(400) || (year.divisible_by(4) && !year.divisible_by(100))
  end
end
