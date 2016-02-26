
require 'pry'

apple_count = 0
case apple_count
when 0
  puts "No apples"
when 1
  puts "1 apple"
else
  puts "#{apple_count} apples"
end

apple_count = 0
apple_text = case apple_count
when 0
  "No apples"
when 1
  "1 apple"
else
  "#{apple_count} apples"
end
puts apple_text

case request_service_result
when 200
  write_resource
when 300
  write_redirect
when 400, 500
  write_error
end