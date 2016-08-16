class Sieve
  attr_accessor :p, :n, :integers

  def initialize(n)
    self.p = 2
    self.n = n
    self.integers = (p..n).to_a
  end

  def primes
    not_prime = []

    while p < n
      integers.each { |i| not_prime << i * p if i * p <= n }
      self.p = integers.detect { |i| i > p }
    end

    integers - not_prime.uniq
  end
end
