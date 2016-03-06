
require 'pry'

module Describer
  def describe
    puts "#{self.class} - #{self.object_id}"
  end
end

module Empty
end

class Alpha
end

a = Alpha.new

a.extend Describer
a.describe  # => Alpha - 70161315638980

Alpha.extend Describer
Alpha.describe  # => Class - 70161316161860

Describer.describe rescue "This fails; method is not defined on module"
Describer.extend Describer
Describer.describe  # => Module - 70161316887740

Empty.extend Describe
Empty.describe  # => Module - 70161316524320

a2 = Alpha.new
a2.extend Empty
a2.describe rescue "This fails; a2 doesn't pick up methods on module Empty because those are class methods"

binding.pry
