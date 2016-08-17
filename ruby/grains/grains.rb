class Grains
  def self.square(n)
    2**n / 2
  end

  def self.total
    (1..64).inject { |a, e| a += square(e) }
  end
end
