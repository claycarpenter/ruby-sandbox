# Basic Array iteration.
# Inspired by:
# https://rubymonk.com/learning/books/1-ruby-primer/chapters/1-arrays/lessons/3-arrays-iteration

# for x in array
puts 'loop with for x in array'
numbers = [1,2,3,4,5]
for i in numbers
  puts i
end

# array#each
puts 'loop with array#each'
number = [1,2,3,4,5]
numbers.each do |i|
  puts i
end
