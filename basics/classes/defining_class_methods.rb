
require 'pry'

require 'json'

class Person
  attr_reader :name, :real_name

  def initialize(name, real_name)
    @name = name
    @real_name = real_name
  end

  def self.build_from_json(json)
    parsed = JSON.parse json

    Person.new(
      parsed['name'],
      parsed['real_name']
    )
  end

  # This is equivalent to the above build_from_json definition.
  # class << self
  #   def build_from_json(json)
  #     parsed = JSON.parse json
  #
  #     Person.new(
  #       parsed['name'],
  #       parsed['real_name']
  #     )
  #   end
  # end
end

ajax = Person.build_from_json '{"name":"Ajax", "real_name":"Francis"}'

puts "#{ajax.name} - #{ajax.real_name}"
