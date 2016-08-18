class Bob
  attr_reader :rules

  def initialize
    silence = ->(w) { w.strip.empty? }

    numbers = lambda do |what|
      return false if silence.call(what)
      what.gsub(/\W/, '').chars.all? {|n| ('0'..'9').include? n }
    end

    shouting = ->(w) { !silence.call(w) && w.upcase == w }

    questioning = ->(w) { w.chars.last == '?' }

    number_question = ->(w) { numbers.call(w) && questioning.call(w) }

    add_rule(silence, 'Fine. Be that way!')
    add_rule(number_question, 'Sure.')
    add_rule(numbers, 'Whatever.')
    add_rule(shouting, 'Whoa, chill out!')
    add_rule(questioning, 'Sure.')
  end

  def hey(what)
    applicable = rules.keys.detect {|r| r.call(what) }
    applicable.nil? ? 'Whatever.' : rules[applicable]
  end

  def add_rule(query, response)
    rules[query] = response
  end

  def rules
    @rules ||= {}
  end
end
