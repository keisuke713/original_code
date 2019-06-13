require 'minitest/autorun'
require './sum_divisor/sum_divisor'

class SumDivisor < Minitest::Test
  def test_sum_divisor
    assert_equal 18, sum_divisor(10)
  end
end
