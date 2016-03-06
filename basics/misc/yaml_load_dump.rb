
# Note: this doesn't seem to work anymore.
# Technique was taken from RubyMonk:
# https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/45-more-classes/lessons/104-serializing

require "pry"

require "yaml"

class Item
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def self.deserialize(yaml)
    YAML::load(yaml)
  end

  def serialize
    YAML::dump(self)
  end
end

banana = Item.new('Banana', 0.33)

p banana.serialize

binding.pry
