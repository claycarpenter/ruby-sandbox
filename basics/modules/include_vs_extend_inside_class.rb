
require 'pry'

module Foo
  def module_method
    puts "Module method"
  end
end

class Bar
  include Foo
end

class Baz
  extend Foo
end

class Snafu
  include Foo
  extend Foo
end

Bar.new.module_method
Baz.module_method
Snafu.new.module_method
Snafu.module_method

binding.pry
