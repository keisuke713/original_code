require 'minitest/autorun'
require './lib/stock_check'

class StockCheckTest < Minitest::Test
  def test_stock_check
    a = <<~TEXT
    11 14 16 10
    12 15 17 10
    13 11 14 11
    12 10 13  8
    11 13 14 10
    TEXT
    assert_equal '11 13 17 8', stock_check(a)
  end
end
