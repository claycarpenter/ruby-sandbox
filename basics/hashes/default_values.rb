
coffee_menu = Hash.new 0
coffee_menu[:coffee] = 1.5
coffee_menu[:americano] = 1.75

puts "Americano price: #{coffee_menu[:americano]}"
puts "Latte price: #{coffee_menu[:latte]}"

coffee_menu = {
  coffee: 1.5,
  americano: 1.75
}
coffee_menu.default = 0

puts "Americano price: #{coffee_menu[:americano]}"
puts "Latte price: #{coffee_menu[:latte]}"
