require './salary_calc_system/salary_calc_system'
require './salary_calc_system/employee'
require './salary_calc_system/boss'
require './salary_calc_system/evaluation'

RSpec.describe 'salary_calc' do
  it 'great manager salary should be 70' do
    @salary_calc_system =
    SalaryCalcSystem.new(Employee::Manager.new)

    expect(@salary_calc_system.calc_salary({
      absent_num: 0, evaluation: Great.new})).to eq 70
  end
end
