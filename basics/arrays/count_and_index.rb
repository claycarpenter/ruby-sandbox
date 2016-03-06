
require 'pry'

class Produce
  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
  end
end

shopping_cart = [
  Produce.new('Orange', 'fruit'),
  Produce.new('Apple', 'fruit'),
  Produce.new('Banana', 'fruit'),
  Produce.new('Carrot', 'vegetable'),
  Produce.new('Cucumber', 'vegetable'),
  Produce.new('Carrot', 'vegetable')
]

fruits = shopping_cart.count {|item| item.type == 'fruit'}
puts "Number of fruits: #{fruits}"

first_carrot = shopping_cart.index {|item| item.name == 'Carrot'}
puts "Index of first carrot: #{first_carrot}"
