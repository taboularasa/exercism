module BookKeeping
  VERSION = 2
end

class Pangram
  def self.is_pangram?(str)
    return false if str.empty?
    chars = str.downcase.gsub(' ', '').chars
    ('a'..'z').all? { |e| chars.include? e }
  end
end
