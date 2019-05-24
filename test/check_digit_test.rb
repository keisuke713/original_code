require 'minitest/autorun'
require './lib/check_digit'

class CheckDigitTest < Minitest::Test
  def test_check_digit
    assert_equal 7, check_digit(846087729128569)
    assert_equal 5, check_digit(628381026148991)
    assert_equal 9, check_digit(511070105176715)
    assert_equal 7, check_digit(273492510450813)
    assert_equal 2, check_digit(670891979616350)
  end
end
