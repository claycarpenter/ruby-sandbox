require 'pry'

def defined_on_class(klass)
  klass.instance_methods - klass.superclass.instance_methods
end

puts defined_on_class Object

class MyClass
  def self.test_one
  end
  def self.test_two
  end
end

puts MyClass.methods - Object.methods

binding.pry
