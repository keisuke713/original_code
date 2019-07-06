require './salary_calc_system/employee'
require './salary_calc_system/boss'
require './salary_calc_system/evaluation'

class SalaryCalcSystem
  attr_reader :employee
  def initialize(employee)
    @employee = employee
  end

  def calc_salary(args)
    base_salary - absence_deduction(args[:absent_num]) + incentive(args[:evaluation])
  end

  def base_salary
    employee.base_salary
  end

  def absence_deduction(absent_num)
    employee.absence_deduction(absent_num)
  end

  def incentive(evaluation)
    employee.incentive(evaluation)
  end
end
