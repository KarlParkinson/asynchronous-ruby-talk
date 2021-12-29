require "open-uri"

start = Time.now

URI.open("https://httpbin.org/image/png")
URI.open("https://httpbin.org/image/png")

puts "Duration: #{Time.now - start}"
