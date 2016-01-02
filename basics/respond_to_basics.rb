# Checking for method availability with #respond_to?

three = 3
pi = 3.14

puts "#{three} (#{three.class}) has method \#times: #{three.respond_to?(:times)}"
puts "#{pi} (#{pi.class}) has method \#times: #{pi.respond_to?(:times)}"
