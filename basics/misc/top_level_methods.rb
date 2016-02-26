
def say_hello
  puts "Hello!"
end

say_hello     # => Hello!
self.method(:say_hello).call     # => Hello!