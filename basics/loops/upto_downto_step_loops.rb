# More loops.
# Inspired by:
# http://www.dotnetperls.com/iterator-ruby

# upto
puts 'Loop using #upto'
0.upto(5) do |i|
  puts i
end

# downto
puts 'Loop using #downto'
5.downto(0) do |i|
  puts i
end

# step
puts 'Loop using #step, positive'
0.step(50, 10) do |i|
  puts i
end

puts 'Loop using #step, negative'
55.step(0, -10) do |i|
  puts i
end
