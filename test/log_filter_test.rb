require 'minitest/autorun'
require './lib/log_filter'

class LogFilterTest < Minitest::Test
  def test_log_filter
    s = ['ruby','php']
    assert_equal ['ruby'], log_filter('ub',s)
  end
end
