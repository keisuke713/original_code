class Evaluation
  def evaluation(eval)
    return 50 if excellent?(eval)
    return 30 if great?(eval)
    return 10 if good?(eval)
    0
  end

  def excellent?(eval)
    eval == 'excellent'
  end

  def great?(eval)
    eval == 'great'
  end

  def good?(eval)
    eval == 'good'
  end
end
