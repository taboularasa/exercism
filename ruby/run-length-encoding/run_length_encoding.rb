module BookKeeping
  VERSION = 2
end

class RunLengthEncoding
  def self.encode(input)
    input.gsub(/(.)\1*/) { ($&.length > 1 ? $&.length : '').to_s + $1 }
  end

  def self.decode(input)
    input.gsub(/(\d+)(\D)/) { $2 * $1.to_i }
  end
end
