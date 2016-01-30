require 'pry'

def logger(source, *messages)
  timestamp = Time::now

  messages.each do |message|
    puts "[#{timestamp} -- #{source}] #{message}"
  end
end

logger('Server', 'Starting')
logger('WorkerThread', 'Accepting request with params:', 'firstName=john', 'lastName=doe')

class ShoppingCart
  attr_reader :items

  def initialize()
    @items = []
  end

  def add(*items)
    p items
    @items += items
  end
end

cart = ShoppingCart.new
cart.add('Gum')
cart.add('Soda', 'Iced Coffee', 'Almond Milk')
puts "ShoppingCart items: #{cart.items.join(', ')}"

# Is doubled array
cart.add(['Chocolate Cheerios', 'Baby Carrots'])
puts "ShoppingCart items: #{cart.items.join(', ')}"

# Is only a single array
cart.add(*['Chocolate Cheerios', 'Baby Carrots'])
puts "ShoppingCart items: #{cart.items.join(', ')}"


def num_range(first, *middle, last)
  puts "Between #{first} and #{last} there are #{middle.count} numbers in the middle."
end

num_range(1, 2, 4, 6, 10)
num_range(1, 10)

binding.pry
