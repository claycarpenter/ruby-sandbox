
require 'pry'

class SimplePerson
  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

  def name
    @name
  end
end

def say_hello
  speaker_name = yield
  "#{speaker_name} says hello!"
end

gabby = SimplePerson.new 'Gabby'
name_proc = gabby.method(:name).to_proc
puts name_proc.call   # => 'Gabby'

puts say_hello &name_proc

binding.pry
