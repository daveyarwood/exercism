module BookKeeping
  VERSION = 6
end

module Pangram
  def self.pangram?(str)
    characters = str.split('')
    ('a'..'z').all? do |letter|
      characters.any? {|character| character.downcase == letter}
    end
  end
end
