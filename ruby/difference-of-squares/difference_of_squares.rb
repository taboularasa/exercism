module BookKeeping
  VERSION = 3
end

class Squares
  attr_accessor :n

  def initialize(n)
    self.n = n
  end

  def square_of_sum
    return 0 if n == 0

    (1..n).reduce(:+)**2
  end

  def sum_of_squares
    return 0 if n == 0

    (1..n).map {|e| e**2 }.reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
