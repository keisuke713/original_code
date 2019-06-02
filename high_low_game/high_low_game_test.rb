require 'minitest/autorun'
require './lib/high_low_game'

class HighLowGameTest < Minitest::Test
  def test_high_low_game
    a = <<~TEXT
    5 2
    7 2
    1 4
    5 3
    5 1
    TEXT
    assert_equal 2, high_low_check(a)
  end
end
