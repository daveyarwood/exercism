module BookKeeping
  VERSION = 6
end

module Pangram
  def self.pangram?(str)
    characters = str.downcase
    ('a'..'z').all?(&characters.method(:include?))
  end
end
