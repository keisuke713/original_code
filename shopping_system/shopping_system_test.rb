require 'minitest/autorun'
require './shopping_system/store'
require './shopping_system/product'
require './shopping_system/customer'

class ShoppingSystemTest < Minitest::Test
  def setup
    @store = Store.new
    @apple = Product.new('apple', 10)
    @banana = Product.new('banana',5)
    @keisuke = Customer.new
    @fruits = [@apple, @banana]
  end

  def test_shopping_system
    @store.prepare_for_open(@apple, 20)
    @store.prepare_for_open(@banana, 10)
    @keisuke.add_to_bag(@store, @fruits)
    @keisuke.buy(@store)
    assert_equal 15, @store.profit
  end
end
