
require 'pry'

def uppercase_words(*words)
  begin
    results = []
    words.each {|word| results << word.upcase}
  rescue
    puts "Caught error: #{$!.inspect}"
  end

  results
end

binding.pry
