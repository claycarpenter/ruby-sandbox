require 'pry'

def each(*elements)
  for element in elements
    yield element
  end
end


each(1,2,3,4) {|x| puts x}

printer = lambda do |x|
  puts x
end

each(1,2,3,4,&printer)
each 1,2,3,4,&printer
each(1,2,3,4) &printer

binding.pry
