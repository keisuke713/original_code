require 'minitest/autorun'
require './log_filter/log_filter'

class LogFilterTest < Minitest::Test
  def test_log_filter
    s = ['ruby','php']
    assert_equal ['ruby'], log_filter('ub',s)
  end
end
