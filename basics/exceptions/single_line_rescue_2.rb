require 'pry'

def no_check
  result = yield

  "I was given \"#{result}\""
end

puts no_check { 'I work fine' }

begin
  puts no_check
rescue LocalJumpError => error
  puts "Error: #{error}"
end

def checked
  result = yield if block_given?

  "I was given \"#{result}\""
end

puts checked { 'I work fine' }
puts checked
