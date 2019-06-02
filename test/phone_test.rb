require 'minitest/autorun'
require './lib/phone'

class InputChaTest < Minitest::Test
  def setup
    @num1 = Phone.new('444440330555055506660')
    @num2 = Phone.new('550330444077770880550330')
  end

  def test_output_chars
    assert_equal %w(h e l l o), @num1.char_in_array
    assert_equal %w(k e i s u k e), @num2.char_in_array
  end
end
