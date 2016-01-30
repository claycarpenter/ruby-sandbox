require 'pry'

module Talker
  def self.talk
    puts "Hi from module/class"
  end

  def talk
    puts "Hi from instance"
  end
end

class Person
  include Talker
end

# Module method
puts Talker::talk

# Instance method
puts Person.new.talk

# Fails with NoMethodError
puts Person.talk rescue NoMethodError

binding.pry
