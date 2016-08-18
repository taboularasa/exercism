module BookKeeping
  VERSION = 2
end

class Binary
  def initialize(value)
    fail ArgumentError if value.gsub(/[01]/,'').length > 0
    @value = value.chars.map(&:to_i)
  end

  def to_decimal
    @value.reverse.each.with_index.inject(0) { |a, (e, i)| a + e * 2**i }
  end
end
