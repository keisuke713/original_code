require 'minitest/autorun'
require './lib/rotation_str'

class RotationStr < Minitest::Test
  def test_rotation_str
    assert_equal 1, rotation_str('aizap','paiza')
  end
end
