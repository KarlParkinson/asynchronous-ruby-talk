require "async"
require "open-uri"

start = Time.now

Async do |task|
  task.async do
    URI.open("https://httpbin.org/image/png")
  end

  task.async do
    URI.open("https://httpbin.org/image/png")
  end
end

puts "Duration: #{Time.now - start}"
