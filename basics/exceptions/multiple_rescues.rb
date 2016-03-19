
require 'pry'

def run_command(command)
  result = eval command
rescue SyntaxError, NoMethodError => error
  puts "Looks like there's a typo in your code: #{error.inspect}"
rescue StandardError => error
  puts "I have no idea what caused this: #{error.inspect}"
end

binding.pry
