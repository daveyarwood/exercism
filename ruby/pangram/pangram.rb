module BookKeeping
  VERSION = 6
end

module Pangram
  def self.pangram?(str)
    characters = str.downcase
    ('a'..'z').all? {|letter| characters.include? letter}
  end
end
