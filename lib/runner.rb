class Runner
  attr_reader :name,:time

  def initialize(name,time)
    @name = name
    @time = time
  end

  def competition(other)
    return "#{self.name}の方が速い" if self > other
    "#{self.name}の方が遅い"
  end

  def >(other)
    if other.is_a?(Runner)
      self.time < other.time
    else
      false
    end
  end
end
