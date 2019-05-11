require 'minitest/autorun'
require './lib/bonus_drink'

class BonusDrinkTest < Minitest::Test
  def setup
    @user1 = BonusDrink.new(3)
    @user2 = BonusDrink.new(11)
    @user3 = BonusDrink.new(100)
  end

  def test_bonus_drink
    assert_equal 4, @user1.get_drink
    assert_equal 16, @user2.get_drink
    assert_equal 149, @user3.get_drink
  end
end
