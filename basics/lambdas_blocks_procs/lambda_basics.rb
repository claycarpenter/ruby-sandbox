require 'pry'

alpha = lambda { puts "A value" }

alpha.call

sum = lambda do |a, b|
  a + b
end

puts sum.call(8,2)

def test_lamba
  yield
end

binding.pry
