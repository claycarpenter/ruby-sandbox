# All about basic loops.
# Inspired by:
# https://rubymonk.com/learning/books/1-ruby-primer/chapters/8-control-structures/lessons/44-loops-in-ruby

# loop
puts 'Basic loop, using loop'
counter = 1   # Include counter to prevent loop from running forever
loop do
  puts "loop #{counter}"
  counter += 1

  break if counter > 5
end

# Using #times (N.times)
puts '#times loop'
counter = 5
counter.times do
  puts "loop #{counter}"
end

# Using #times with an iteration tracker
puts '#times loop with iteration tracking'
counter = 5
counter.times do |i|
  puts "loop #{i}"
end
