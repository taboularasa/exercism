class Prime
  def self.nth(n)
    raise ArgumentError if n == 0

    prime_test = lambda do |num|
      (2..Math.sqrt(num)).each { |i| return false if num % i == 0 }
      return true
    end

    (2..Float::INFINITY).lazy.select(&prime_test).first(n).last
  end
end
