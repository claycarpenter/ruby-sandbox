require 'pry'

sum = lambda {|a,b| a + b}

# Implicit call, explicit argument
def calculate_explicit(a, b, &calculation)
  calculation.call(a, b)
end

puts calculate_explicit(1, 1) {|a,b| a + b}
puts calculate_explicit(2, 2, &sum)


# Explicit call, implicit argument
def calculate_implicit(a, b)
  yield a, b
end

puts calculate_implicit(2, 2, &sum)
puts calculate_implicit(2, 2) {|a,b| a * b * b}


def calculate_no_block(a, b, calculation)
  calculation.call(a, b)
end
puts calculate_no_block(2, 3, sum)
puts calculate_no_block(2, 3, lambda {|a, b| a * b})

def test_block(block)
  block.call
end

binding.pry
