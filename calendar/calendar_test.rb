require 'date'
require 'minitest/autorun'
require './calendar/calendar'

class CalendarTest < Minitest::Test
  def setup
    @calendar = Calendar.new(2019,5)
  end

  def test_arrange_test
    month_array = [
      [ 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
      [ '   ', '   ', '   ', '  1', '  2', '  3', '  4'],
      [ '  5', '  6', '  7', '  8', '  9', ' 10', ' 11'],
      [ ' 12', ' 13', ' 14', ' 15', ' 16', ' 17', ' 18'],
      [ ' 19', ' 20', ' 21', ' 22', ' 23', ' 24', ' 25'],
      [ ' 26', ' 27', ' 28', ' 29', ' 30', ' 31', '   ']
    ]
    assert_equal month_array, @calendar.arrange_space
  end
end
