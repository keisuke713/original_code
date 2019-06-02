require 'minitest/autorun'
require './lib/auto_fill'

class AutoFillTest < Minitest::Test
  def setup
    input = [
      3 ,
      [1, 2],
      [3, 4],
    ]
    @num = AutoFill.new(input)
  end
  def test_auto_fill
    output = [
      [1, 2, 3, 4, 5],
      [3, 4, 5, 6, 7],
      [5, 6, 7, 8, 9],
      [7, 8, 9, 10, 11],
      [9, 10, 11, 12, 13]
    ]
    assert_equal output, @num.auto_calc
  end
end
