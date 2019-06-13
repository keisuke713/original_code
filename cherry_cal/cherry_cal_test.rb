require 'minitest/autorun'
require './cherry_cal/cherry_calc'

class CherryCalcTest < Minitest::Test
  def test_cherry_calc
    assert_equal '1, 9, 0', cherry_calc(1, 9)
    assert_equal '5, 5, 4', cherry_calc(5, 9)
  end
end
