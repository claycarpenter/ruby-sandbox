
require 'pry'

def uppercase_words(*words)
  begin
    results = []
    words.each {|word| results << word.upcase}
  rescue StandardError => error
    puts "Caught error: #{error.inspect}"
  end

  results
end

def lowercase_words(*words)
  results = []
  words.each {|word| results << word.downcase}
rescue StandardError => error
  puts "Caught error: #{error.inspect}"
ensure
  return results
end


binding.pry
