module BookKeeping
  VERSION = 3
end

class Gigasecond
  def self.from(date)
    return date + 10**9
  end
end
