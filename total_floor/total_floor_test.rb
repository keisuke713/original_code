require 'minitest/autorun'
require './lib/total_floor'

class TotalFloor < Minitest::Test
  def test_total_floor
    a = [8,4]
    assert_equal 11, total_floor(a)
  end
end
