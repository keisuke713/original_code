JANKEN = ['rock', 'scissors', 'paper']

class Janken
  attr_reader :strategy

  def initialize(strategy)
    @strategy = strategy
  end

  def play(other)
    return 'あいこ' if JANKEN.index(strategy) == JANKEN.index(other.strategy)
    if JANKEN.index(strategy) == 0
      judge(other, 1, 2)
    elsif JANKEN.index(strategy) == 1
      judge(other, 2, 0)
    elsif JANKEN.index(strategy) == 2
      judge(other, 0, 1)
    else
      '正しく入力してね'
    end
  end

  private

  def judge(other, case1, case2)
    case JANKEN.index(other.strategy)
    when case1
      'Win'
    when case2
      'Lose'
    end
  end
end
