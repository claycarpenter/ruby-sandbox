
simple_default = Hash.new do |hash, key|
  hash[key] = 'default'
end

puts simple_default['a']
simple_default['b'] = 'eh'
puts simple_default['b']
p simple_default

test_2 = Hash.new 0
puts test_2['a']
test_2['b'] = 'eh'
puts test_2['b']
p test_2

store_default = Hash.new do |hash, key|
  # Value based on key type
  value = 0 if key.is_a? Fixnum
  value = '*' if key.is_a? String

  # ...And store the value...
  # Assignment is last, so value is returned
  hash[key] = value
end

puts store_default['a']
puts store_default[1]
p store_default

no_storage = Hash.new do |hash, key|
  # Value based on key type
  value = 0 if key.is_a? Fixnum
  value = '*' if key.is_a? String

  # Just return the value, without storing.
  value
end

puts no_storage['a']
puts no_storage[1]
p no_storage
