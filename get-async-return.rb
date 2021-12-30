require "async"
require "redis"

redis = Redis.new

task = Async do
  redis.set("a", 1)
  redis.get("a")
end

puts task.wait
