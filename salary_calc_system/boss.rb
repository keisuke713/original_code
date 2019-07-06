require './salary_calc_system/evaluation'

class Boss
  def check_evaluation(evaluation)
    Evaluation.new.evaluation(evaluation)
  end
end
