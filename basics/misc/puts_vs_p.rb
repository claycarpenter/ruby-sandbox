
require "pry"

class Person
  def initialize name, age, job
    @name = name
    @age = age
    @job = job
  end
end

alda = Person.new 'Alda', 24, 'Waitress'
puts alda
p alda
