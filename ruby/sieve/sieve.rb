module BookKeeping
  VERSION = 1
end

class Sieve
  def initialize(n)
    @limit = n
  end

  def multiples(x)
    (x + 1..@limit).select {|y| y % x == 0}
  end

  def primes
    current = 1
    numbers = (2..@limit).to_a

    candidates = Enumerator.new do |y|
      while current <= @limit
        current = numbers.drop_while {|x| x <= current}.first || break
        y << current
      end
    end

    candidates.each do |x|
      multiples(x).each do |multiple|
        numbers -= [multiple]
      end
    end

    numbers
  end
end
