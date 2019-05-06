require 'minitest/autorun'
require './lib/karaoke_machine'

class KaraokeMachineTest < Minitest::Test
  def setup
    @kaeru = KaraokeMachine.new('ag')
    @keisuke = KaraokeMachine.new('b')
  end

  def test_karaoke_machine
    assert_equal 'ca#', @kaeru.up_key(3)
  end
end
