class Hamming
  VERSION = File.read('.version').to_i

  def Hamming.compute(a, b)
    unless a.size == b.size
      raise ArgumentError.new("strands must be the same length")
    end

    a.chars.zip(b.chars).inject(0) do |sum, ab|
      a, b = ab
      a != b ? sum + 1 : sum
    end
  end
end
