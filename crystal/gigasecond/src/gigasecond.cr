module Gigasecond
  def Gigasecond.from(datetime)
    datetime + 1_000_000_000.seconds
  end
end
