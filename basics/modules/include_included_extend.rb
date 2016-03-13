
require 'pry'

module Foo
  def self.included(including_class)
    including_class.extend(ClassMethods)
  end

  module ClassMethods
    def class_method
      puts "Class method"
    end
  end

  def instance_method
    puts "Instance method"
  end
end

class Bar
  include Foo
end

bar = Bar.new
bar.instance_method
Bar.class_method

binding.pry
