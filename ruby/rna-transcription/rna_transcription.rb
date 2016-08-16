module BookKeeping
  VERSION = 4
end

class Complement
  COMPLEMENTS = {
    'C' => 'G',
    'G' => 'C',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(dna)
    return '' unless dna.chars.all? { |e| COMPLEMENTS.keys.include? e }
    dna.chars.map {|e| COMPLEMENTS[e] }.join
  end
end
