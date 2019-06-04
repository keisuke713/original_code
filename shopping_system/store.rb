class Store
  attr_accessor :cost, :sale, :lineup

  def initialize
    @lineup = []
    @cost = 0
    @sale = 0
  end

  def prepare_for_open(product, selling_price)
    purchase(product)
    set_selling_price(product, selling_price)
    display(product)
  end

  def profit
    @sale - @cost
  end

  private

  def set_selling_price(product, selling_price)
    product.price = selling_price
  end

  def purchase(product)
    @cost += product.price
  end

  def display(product)
    @lineup << product
  end
end
