require 'minitest/autorun'
require './lib/split_price'

class SplitPriceTest < Minitest::Test
  def test_split_price
    assert_equal ['1110.0', '万円'], split_price('1110.0万円')
    assert_equal ['1,23,455', '万円'], split_price('1,23,455万円')
    assert_equal ['110-233', '円'], split_price('110-233円')
    assert_equal ['価格設定', ''], split_price('価格設定')
    assert_equal ['', ''], split_price(nil)
  end
end
