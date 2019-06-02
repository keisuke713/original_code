require 'minitest/autorun'
require './lib/credit_card'

class CreditCardTest< Minitest::Test
  def setup
    @card1 = CreditCard.new(846087729128569)
    @card2 = CreditCard.new(628381026148991)
    @card3 = CreditCard.new(511070105176715)
  end

  def test_check_digit
    assert_equal 7, @card1.return_last_digit
    assert_equal 5, @card2.return_last_digit
    assert_equal 9, @card3.return_last_digit
  end
end
