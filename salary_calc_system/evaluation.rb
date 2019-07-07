class Evaluation
  attr_reader :eval
  def initialize
    post_initialize
  end

  def post_initialize
    raise 'NotImplementError'
  end
end

class Excellent < Evaluation
  def initialize
    @eval = 50
  end
end

class Great < Evaluation
  def initialize
    @eval = 30
  end
end

class Good < Evaluation
  def initialize
    @eval = 10
  end
end

class Fight < Evaluation
  def initialize
    @eval = 0
  end
end
