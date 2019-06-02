# 短距離走のタイムを競うプログラミングを作りました。

class Runner
  # timeは短距離走のタイム。
  attr_reader :name,:time

  def initialize(name,time)
    @name = name
    @time = time
  end

  def competition(other)
    return "#{self.name}の方が速い" if self > other
    "#{self.name}の方が遅い"
  end
  # 短距離走ではタイムは小さい方が速いので>メソッドを再定義しました。
  def >(other)
    if other.is_a?(Runner)
      self.time < other.time
    else
      false
    end
  end
end
