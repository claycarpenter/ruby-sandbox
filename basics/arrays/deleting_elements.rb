# Array#delete and #delete_if
# Inspired by:
#

# delete
puts '#delete'
letters = ['a','b','c','d','c','b','a']
letters.delete 'c'
puts "No 'c': #{letters}"

# delete_at
puts '#delete_at'
letters = ['a','b','c','d','c','b','a']
letters.delete_at 2
puts "No 'c': #{letters}"

# delete_if
puts '#delete_if'
numbers = [1,2,3,4,5]
numbers.delete_if {|x| x % 2 == 0}
puts "No even numbers: #{numbers}"
