
coffee_menu = {
  coffee: 1.5,
  americano: 1.75,
  latte: 3.0
}
coffee_menu.each do |drink, price|
  puts "A #{drink} costs #{price}"
end

puts "Coffee menu drinks: #{coffee_menu.keys}"
coffee_menu.keys.each do |drink|
  puts "A #{drink} costs #{coffee_menu[drink]}"
end

puts "Coffee menu prices: #{coffee_menu.values}"
