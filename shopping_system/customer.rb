class Customer
  attr_accessor :shopping_bag

  def initialize
    @shopping_bag = []
  end

  def add_to_bag(store, products)
    products.each do |product|
      @shopping_bag << product
      store.lineup.delete(product)
    end
  end

  def replace_product(store, product)
    @shopping_bag.delete(product)
    store.lineup << product
  end

  def buy(store)
    @shopping_bag.each do |product|
      store.sale += product.price
    end
    @shopping_bag = []
  end
end
