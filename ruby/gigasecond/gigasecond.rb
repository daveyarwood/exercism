module Gigasecond
  VERSION = 1

  def Gigasecond.from(datetime)
    Time.at(datetime.to_i + 1_000_000_000)
  end
end
