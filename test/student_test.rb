require 'minitest/autorun'
require './lib/student'

class StudentTest < Minitest::Test
  def setup
    @user1 = Student.new(5,80)
    @user2 = Student.new(15,80)
  end

  def test_student
    assert_equal '合格', @user1.result_test
    assert_equal '不合格', @user2.result_test
  end
end
