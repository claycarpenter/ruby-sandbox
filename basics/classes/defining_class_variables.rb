
require 'pry'

class SimpleCache
  @@data = {}

  def self.set(key, value)
    @@data[key] = value
  end

  def self.get(key)
    @@data[key]
  end
end

SimpleCache.set(1, {name: 'Ryan'})
SimpleCache.set(2, {name: 'Aimee'})

puts SimpleCache.get(2)
