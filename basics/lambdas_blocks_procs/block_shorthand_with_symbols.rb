
require 'pry'

p ['a','b','c'].map &:upcase    # => 'A', 'B', 'C'

p ['a','b','c'].map {|obj| obj.send(:upcase)}

binding.pry
