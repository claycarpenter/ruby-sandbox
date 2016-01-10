
coffee_menu = {
  coffee: 1.5,
  americano: 1.75,
  latte: 3.0
}

coffee_menu.each_pair do |drink, price|
  puts "A #{drink} costs #{price}"
end

drinks = []
coffee_menu.each_key do |drink|
  drinks << drink
end
puts "Available drinks: #{drinks.join(', ')}"

prices = []
coffee_menu.each_value do |price|
  prices << price
end
puts "Menu prices: #{prices.join(', ')}"