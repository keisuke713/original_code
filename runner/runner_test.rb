require 'minitest/autorun'
require './runner/runner'

class RunnerTest < Minitest::Test
  def setup
    @user1 = Runner.new('yamada', 9)
    @user2 = Runner.new('katou', 10)
  end

  def test_runner
    assert_equal 'yamadaの方が速い', @user1.competition(@user2)
    assert_equal 'katouの方が遅い', @user2.competition(@user1)
  end
end
