class Raindrops
  RULES = [
    {3, "Pling"},
    {5, "Plang"},
    {7, "Plong"}
  ]

  def Raindrops.drops(drop)
    sounds = RULES.reduce "" do |result, (n, sound)|
      drop % n == 0 ? result + sound : result
    end

    sounds.empty? ? drop.to_s : sounds
  end
end