require 'pry'

sum_lambda_long = lambda {|a,b| a + b}
sum_lambda_short = ->(a,b) {a + b}


sum_proc_long = Proc.new {|a,b| a + b}
sum_proc_short = proc {|a,b| a + b}

binding.pry
