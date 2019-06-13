require 'minitest/autorun'
require './rotation_str/rotation_str'

class RotationStr < Minitest::Test
  def test_rotation_str
    assert_equal 2, rotation_str('izapa','paiza')
  end
end
