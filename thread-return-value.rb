require "redis"

redis = Redis.new

t = Thread.new do
  redis.set("a", 1)
  redis.get("a")
end

puts t.value
