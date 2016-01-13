class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
end

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

class PersonAttr
  attr_accessor :name
  attr_reader :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end