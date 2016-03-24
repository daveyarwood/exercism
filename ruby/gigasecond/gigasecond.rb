module Gigasecond
  VERSION = 1

  def Gigasecond.from(datetime)
    datetime + 1_000_000_000
  end
end
