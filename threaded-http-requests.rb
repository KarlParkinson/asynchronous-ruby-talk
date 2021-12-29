require "open-uri"

start = Time.now

(1..2).map do
  Thread.new do
    URI.open("https://httpbin.org/image/png")
  end
end.each(&:join)

puts "Duration: #{Time.now - start}"
