require 'pry'

def lambda_return_test
  lambda { puts 'lambda returns'; return }.call

  puts 'method returns'
  return
end

lambda_return_test

def proc_return_test
  Proc.new { puts 'proc returns'; return }.call

  puts 'method returns'
  return
end

proc_return_test

def return_test
  yield
end

return_proc = Proc.new { puts 'proc returns'; return }
return_lambda = lambda { puts 'lambda returns'; return }

binding.pry
