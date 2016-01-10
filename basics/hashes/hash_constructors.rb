
from_array = Hash[
  'a', 1, 'b', 2
]
puts "From array list: #{from_array}"

from_paired_array = Hash[ [
  ['a', 1],
  ['b', 2]
] ]
puts "From array pairs: #{from_paired_array}"

from_key_value_pairs = Hash[
  'a' => 1,
  'b' => 2
]
puts "From key-value pairs: #{from_key_value_pairs}"
