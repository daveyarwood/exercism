module BookKeeping
  VERSION = 3
end

class Raindrops
  RULES = [
    [3, 'Pling'],
    [5, 'Plang'],
    [7, 'Plong']
  ]

  def Raindrops.convert(drop_number)
    sounds = RULES.select {|(n, _)| drop_number % n == 0}
                  .collect {|(_, str)| str}

    if sounds.empty?
      drop_number.to_s
    else
      sounds.join ''
    end
  end
end
