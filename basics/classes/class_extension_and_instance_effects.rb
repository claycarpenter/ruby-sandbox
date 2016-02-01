require 'pry'

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
end

emma = Person.new 'Emma', 32

class Person
  def get_name
    @name
  end
end

puts emma.get_name

binding.pry
