module BookKeeping
  VERSION = 2
end

class Robot
  def name
    @name ||= begin
      name = generate_name until Robot.name_available? name
      Robot.register_name name
      name
    end
  end

  def reset
    @name = nil
  end

  private

  def generate_name
    a = ('A'..'Z').to_a
    n = (1..9).to_a.map(&:to_s)
    a[rand(26)] + a[rand(26)] + n[rand(9)] + n[rand(9)] + n[rand(9)]
  end

  def self.register_name(name)
    names << name
  end

  def self.name_available?(name)
    return false if name.to_s.empty?
    !names.include? name
  end

  def self.names
    @@names ||= []
  end
end
