require 'minitest/autorun'
require './lib/rotation_str'

class RotationStr < Minitest::Test
  def test_rotation_str
    assert_equal 2, rotation_str('izapa','paiza')
  end
end
