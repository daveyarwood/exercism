module BookKeeping
  VERSION = 6
end

module Pangram
  ALPHABET = 'abcdefghijklmnopqrstuvwxyz'.split('')

  def self.pangram?(str)
    characters = str.split('')

    ALPHABET.all? do |letter|
      characters.any? {|character| character.downcase == letter}
    end
  end
end
