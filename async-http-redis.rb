require "async"
require "redis"
require "open-uri"

redis = Redis.new
start = Time.now

Async do |task|
  task.async do
    redis.set("a", 1)
    redis.get("a")
    redis.incr("a")
    redis.incr("a")
  end

  task.async do
    URI.open("https://httpbin.org/image/png")
  end
end

puts "Duration: #{Time.now - start}"

