module BookKeeping
  VERSION = 3
end

class Raindrops
  def Raindrops.convert(n)
    result = ''

    [[3, 'Pling'], [5, 'Plang'], [7, 'Plong']].each do |(num, str)|
      result += str if n % num == 0
    end

    result == '' ? n.to_s : result
  end
end
