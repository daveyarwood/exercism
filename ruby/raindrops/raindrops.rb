module BookKeeping
  VERSION = 3
end

class Raindrops
  RULES = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def Raindrops.convert(drop)
    sounds = RULES.sort.each_with_object '' do |(n, sound), result|
      result << sound if drop % n == 0
    end

    sounds.empty? ? drop.to_s : sounds
  end
end
