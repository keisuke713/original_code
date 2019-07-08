class Calc
  attr_accessor :tax
  def initialize(logger)
    @logger = logger
  end
  def add(a,b)
    @logger.log
    a + b
  end

  def price(a)
    @logger.log
    a * (1 + tax)
  end
end
