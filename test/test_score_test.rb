require 'minitest/autorun'
require './lib/test_score'

class TestScoreTest < Minitest::Test
  def setup
    result = <<~TEXT
    name,テスト1,テスト2,テスト3,テスト4
    一郎,100,40,70,80
    二郎,60,90,80,10
    三郎,90,60,60,60
    四郎,80,70,70,80
    TEXT
    @all_students = TestScore.new(result)
  end

  def test_score_test
    assert_equal ["一郎,100", "三郎,90", "四郎,80", "二郎,60"], @all_students.sort_ruby
  end

  def test_score_ave
    assert_equal ["四郎,75.0", "一郎,72.5", "三郎,67.5", "二郎,60.0"], @all_students.average
  end
end
