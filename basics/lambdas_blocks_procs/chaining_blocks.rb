
require 'pry'

numbers = 1..10

p numbers.select {|x| x % 2 == 0}.reverse
p numbers.select(&lambda{|x| x % 2 == 0}).reverse
p numbers.select(&->(x){x % 2 == 0}).reverse

binding.pry
