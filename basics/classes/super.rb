require 'pry'

class Coffee
  def initialize(price)
    @price = price
  end

  def total
    @price
  end
end

class Latte < Coffee
  def initialize(coffee_price, milk_price)
    @price = coffee_price
    @milk_price = milk_price
  end

  def total
    super + @milk_price
  end
end

black_coffee = Coffee.new 1.50
puts "Price for black coffee: $#{black_coffee.total}"

latte = Latte.new black_coffee.total, 0.75
puts "Price for latte: $#{latte.total}"

class ShoppingCart
  def initialize(*item_prices)
    @item_prices = item_prices
  end

  def total
    total = 0
    @item_prices.each {|x| total += x}
    total
  end
end

class DiscountShoppingCart < ShoppingCart
  def initialize(*item_prices, discount)
    @item_prices = item_prices
    @discount = discount
  end

  def total
    super * @discount
  end
end

item_prices = [1, 2, 3, 4]

cart = ShoppingCart.new *item_prices
puts "Regular cart total: $#{cart.total}"      # => $10

discount_cart = DiscountShoppingCart.new *item_prices, 0.8
puts "Discount cart total: $#{discount_cart.total}"   # => $8.0

binding.pry
