require 'minitest/autorun'
require './sum_matrix/sum_matrix'

class SumMatrixTest < Minitest::Test

  def setup
    input = [
      [1, 2, 3, 4,],
      [2, 3, 4, 5,],
      [3, 4, 5, 6,],
      [4, 5, 6, 7,],
      [5, 6, 7, 8,],
    ]
    @array_sum1 = SumMatrix.new(input)
  end

  def test_sum_matrix
    output = [
      [1, 2, 3, 4, 10],
      [2, 3, 4, 5, 14],
      [3, 4, 5, 6, 18],
      [4, 5, 6, 7, 22],
      [5, 6, 7, 8, 26],
      [15,20,25,30,90],
    ]
    assert_equal output, @array_sum1.sum
  end
end
