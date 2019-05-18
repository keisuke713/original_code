require 'minitest/autorun'
require './lib/input_cha'

class InputChaTest < Minitest::Test
  def setup
    @num = Phone.new('440330555055506660')
    @num2 = Phone.new('550330444077770880550330')
  end

  def test_input_cha
    assert_equal 'hello', @num.output_cha
    assert_equal 'keisuke', @num2.output_cha
  end
end
