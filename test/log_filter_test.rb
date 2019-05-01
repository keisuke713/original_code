require 'minitest/autorun'
require './lib/log_filter'

class LogFilterTest < Minitest::Test
  def test_log_filter
    s = ['i', 'paiza', 'keisuke']
    assert_equal ['paiza', 'keisuke'], log_filter(s)
  end
end
