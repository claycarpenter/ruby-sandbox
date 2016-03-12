
require 'pry'

Product = Struct.new(:name, :price)

table = Product.new 'Table', 50.0
puts "Name: #{table.name} - Price: #{table.price}"
puts table

TaxableProduct = Struct.new(:name, :price) do
  def price_with_tax
    self.price * 1.07
  end
end

Struct.new('Namespaced', :name)
from_namespace = Struct::Namespaced.new 'Test'
puts from_namespace

binding.pry
