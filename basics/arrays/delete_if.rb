# Array#delete_if
# Inspired by:
#

# for x in array
puts 'delete_if'
numbers = [1,2,3,4,5]
numbers.delete_if {|x| x % 2 == 0}
puts "Result: #{numbers}"
