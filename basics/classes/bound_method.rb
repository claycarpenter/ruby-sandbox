
class Person
  def initialize(name)
    @name = name
  end

  def say(message)
    "#{@name} says \"#{message}\""
  end
end

mike = Person.new 'Mike'
puts mike.say 'Hello!'

mike_say = mike.method('say')
puts mike_say.call 'Goodbye!'
