
# Splitting into variables

a, b = [1, 2]
a   # => 1
b   # => 2

# Multiple return values

def service_request(request)
  # Perform some operation here...
  status_code = 500
  status_message = "server error"

  # Return status code and message

  [status_code, status_message]
end

response_code, response_message = service_request(nil)


# Split as args to blocks

[
  ['Orange', 0.65],
  ['Banana', 0.33],
  ['Apple', 0.75]
].each {|fruit, price| puts "#{fruit} costs $#{price}" }


# Capturing variables with splat operator

first, *remaining = [1,2,3,4]
# first => 1; remaining => [2,3,4]
*remaining, last = [1,2,3,4]
# first => [1,2,3]; remaining => [4]
first, *remaining, last = [1,2,3,4]
# first => 1; remaining => [2,3], last => 4


# Splat operator to convert arrays to function args

def say_hello(talker, listener)
  puts "#{talker} says hello to #{listener}"
end

say_hello *['John', 'Amy']

