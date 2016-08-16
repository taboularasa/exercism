class Fixnum
  def to_roman
    concat_romans(self)
  end

  private

  def concat_romans(remaining)
    result = ''

    while max_remaining_key(remaining) <= remaining
      result += max_remaining_value(remaining)
      concat_romans(remaining - 1)
    end

    result
  end

  def max_remaining_key(remaning)
    Fixnum.roman_numeral_keys.detect { |i| i <= remaning }
  end

  def max_remaining_value(remaining)
    Fixnum.roman_numeral_map[max_remaining_key(remaining)]
  end

  def self.roman_numeral_keys
    @@romain_numeral_keys ||= roman_numeral_map.keys
  end

  def self.roman_numeral_map
    @@roman_numeral_map ||= {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I",
    }
  end
end
