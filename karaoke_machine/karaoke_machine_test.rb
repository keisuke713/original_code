require 'minitest/autorun'
require './karaoke_machine/karaoke_machine'

class KaraokeMachineTest < Minitest::Test
  def setup
    @melody1 = KaraokeMachine.new('ag', 3)
    @melody2 = KaraokeMachine.new('ab', 3)
  end

  def test_karaoke_machine
    assert_equal 'ca#', @melody1.up_melody
    assert_equal 'cd', @melody2.up_melody
  end
end
