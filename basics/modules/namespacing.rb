require 'pry'

module Talker
  # Available as Talker::LANGUAGE
  LANGUAGE = 'English'

  # Available as Talker::talk
  def self.talk
    puts "Hi from module"
  end
end

NAME = 'Global'

module Outer
  NAME = 'Outer'

  module Inner
    NAME = 'Inner'

    def self.global_name
      ::NAME
    end

    def self.local_name
      NAME
    end
  end
end

puts Outer::Inner.global_name
puts Outer::Inner.local_name

# accord = Vehicles::Cars::Sedans::Accord.new

# binding.pry
