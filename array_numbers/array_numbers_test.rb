require 'minitest/autorun'
require './array_numbers/array_numbers'

class ArrayNumbersTest < Minitest::Test
  def setup
    input = [
    [3, 7, 4, 5, 1],
    [6, 9, 1, 8, 8],
    [11, 2, 5, 2, 2]
    ]
    @arr_num = ArrayNumbers.new(input)
  end

  def test_array_numbers
    output = [
      %w(A A B B B),
      %w(A A A B B),
      %w(A B B B B)
    ]
    assert_equal output, @arr_num.separate
  end
end
