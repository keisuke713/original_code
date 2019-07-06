require './salary_calc_system/boss'

module Employee
  class Employee
    attr_accessor :base_salary, :boss
    def initialize
      @boss = Boss.new
      post_initialize
    end

    def absence_deduction(num)
      salary_per_day * num
    end

    def incentive(evaluation)
      0
    end

    def salary_per_day
      base_salary / 20
    end

    def post_initialzie
      raise 'NotImplementError'
    end
  end

  class Manager < Employee
    def post_initialize
      @base_salary = 40
    end

    def incentive(evaluation)
      boss.check_evaluation(evaluation)
    end
  end

  class Regular < Employee
    def post_initialize
      @base_salary = 20
    end
  end
end
