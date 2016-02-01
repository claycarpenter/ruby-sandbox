require 'pry'

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
end

def get_name
  @name
end

binding.pry
