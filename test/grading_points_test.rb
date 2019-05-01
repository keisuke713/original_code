require 'minitest/autorun'
require './lib/grading_points'

class GradingPoints < Minitest::Test
  def setup
    @user1 = Addending_student.new(5,80)
    @user2 = Addending_student.new(15,80)
  end

  def test_grading_points
    assert_equal '合格', @user1.result
    assert_equal '不合格', @user2.result
  end
end
