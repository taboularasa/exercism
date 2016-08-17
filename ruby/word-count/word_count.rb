module BookKeeping
  VERSION = 1
end

class Phrase
  def initialize(phrase)
    @words =
      phrase.downcase.split(/[^\w']+/).map {|w| w.gsub!(/^\'|\'?$/, '') }
  end

  def word_count
    Hash.new(0).tap { |h| @words.map { |w| h[w] += 1 } }
  end
end
