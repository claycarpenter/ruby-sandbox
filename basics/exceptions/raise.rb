
require 'pry'

def inner(command)
  eval command
rescue StandardError => error
  puts "Caught error in inner: #{error.inspect}"
  raise
end

def outer(command)
  inner command
rescue StandardError => error
  puts "Caught error in outer: #{error.inspect}"
end


binding.pry
