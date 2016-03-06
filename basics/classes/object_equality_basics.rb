
require 'pry'

class Item
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def ==(other_item)
    @name == other_item.name && @price == other_item.price
  end

  def eql?(other_item)
    value_equality = self == other_item
    class_equality = @name.class == other_item.name.class && @price.class == other_item.price.class

    value_equality && class_equality
  end

  def hash
    @name.hash ^ @price.hash
  end
end

orange_fixnum = Item.new 'Orange', 1
orange_float = Item.new 'Orange', 1.00

puts "== #{orange_fixnum == orange_float}"      # => true
puts "eql? #{orange_fixnum.eql? orange_float}"  # => false

apples = []
3.times { apples << Item.new('Apple', 0.75)}

puts "All apples: #{apples}"
puts "Unique apples: #{apples.uniq}"

binding.pry
