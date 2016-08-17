module BookKeeping
  VERSION = 2
end

class Year
  def self.leap?(year)
    leap_year = false
    leap_year = true if year % 4 == 0
    leap_year = false if year % 100 == 0
    leap_year = true if year % 400 == 0
    leap_year
  end
end
