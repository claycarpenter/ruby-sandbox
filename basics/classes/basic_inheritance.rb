require 'pry'

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
  def initialize(*item_prices)
    @item_prices = item_prices.map {|x| x * 0.8}
  end
end

item_prices = [1, 2, 3, 4]

cart = ShoppingCart.new *item_prices
puts "Regular cart total: #{cart.total}"

discount_cart = DiscountShoppingCart.new *item_prices
puts "Discount cart total: #{discount_cart.total}"

binding.pry
