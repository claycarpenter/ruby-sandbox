
require 'pry'

class SimpleCache
  @@redis_connection

  def self.redis_connection=(connection)
    @@redis_connection = connection
  end

  def self.redis_connection
    @@redis_connection
  end
end

SimpleCache.redis_connection = Redis.new url: "http://localhost:6379/"

binding.pry
