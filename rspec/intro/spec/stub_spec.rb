
require 'pry'

# Must have #price method in order to comply with RSpec double
# validation.
class Product
  attr_reader :price
end

# Depends on Product for price values (used in #final_price)
class PriceCalculator
  def add(product)
    products << product
  end

  def products
    @products ||= []
  end

  def final_price
    @products.map(&:price).inject(&:+)
  end
end

describe "Stubs" do
  let(:calculator) { PriceCalculator.new }

  it "provides stubs to simulate state" do
    calculator = PriceCalculator.new

    # RSpec 2 style
    # calculator.add instance_double("Product", price: 1)
    # calculator.add instance_double("Product", price: 100.25)

    # RSpec 3 style
    product_1 = instance_double("Product")
    # using #and_return to specify return value
    allow(product_1).to receive(:price).and_return(1.0)
    calculator.add product_1

    product_2 = instance_double("Product")
    # using block to specify return value
    allow(product_2).to receive(:price) { 100.25 }
    calculator.add product_2

    product_free = instance_double("Product")
    # using block (created from lambda) to specify return value
    for_free = ->{ 0.0 }
    allow(product_free).to receive(:price, &for_free)
    calculator.add product_free

    expect(calculator.final_price).to eq 101.25

    # Specifying multiple values at one #and_return call
    # product_stub = instance_double('Product')
    # allow(product_stub).to receive(:price).and_return(1.0, 100.25)
    # 2.times { calculator.add product_stub }
  end

  it "provides mocks to assert on message passing - style 1" do
    product_mock = double(:product)
    expect(product_mock).to receive(:price)
    # More constrained, ensures no args are passed to #price
    # expect(product_mock).to receive(:price).with(no_args)

    calculator.add product_mock
    calculator.final_price
  end

  it "provides mocks to assert on message passing - style 2", skip: "Doesn't work due to conflicting Product impls" do
    # Expectation
    expect_any_instance_of(Product).to receive(:price)

    # Stub
    # allow_any_instance_of(Product).to receive(:price)

    product = Product.new

    calculator.add product
    calculator.final_price
  end
end