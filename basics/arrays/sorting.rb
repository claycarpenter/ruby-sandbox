
require 'pry'

[3,2,4,1].sort {|a,b| a <=> b}    # => [1,2,3,4]

Product = Struct.new(:name, :price)

inventory = [
  Product.new('Table', 50),
  Product.new('Chair', 20),
  Product.new('Sofa', 150),
  Product.new('End Table', 30),
  Product.new('Lamp', 15)
]

p inventory.sort {|a, b| a.price <=> b.price }

PriceComparableProduct = Struct.new(:name, :price) do
  def <=>(other)
    self.price <=> other.price
  end
end

price_comparable_inventory = [
  PriceComparableProduct.new('Table', 50),
  PriceComparableProduct.new('Chair', 20),
  PriceComparableProduct.new('Sofa', 150),
  PriceComparableProduct.new('End Table', 30),
  PriceComparableProduct.new('Lamp', 15)
]

p price_comparable_inventory.sort

binding.pry
