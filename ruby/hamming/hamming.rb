module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(a, b)
    raise ArgumentError unless a.length == b.length
    a.chars.zip(b.chars).map {|e| e[0] != e[1]}.count(true)
  end
end
