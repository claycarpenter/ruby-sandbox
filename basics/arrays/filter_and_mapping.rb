# Array#map and Array#select
# Inspired by:
# http://rubymonk.com/learning/books/1-ruby-primer/chapters/1-arrays/lessons/34-arrays-the-basics

# map
puts '#map'
numbers = [1,2,3,4,5]
map_results = numbers.map {|x| x % 2 == 0}
puts "Are numbers even: #{map_results}"

# select
puts '#select'
numbers = [1,2,3,4,5]
select_results = numbers.select {|x| x % 2 == 0}
puts "Only even numbers: #{select_results}"
