require "json"
require "uri"
require "net/http"

url = "https://api.github.com/repos/ruby/ruby"
uri = URI(url)

res = Net::HTTP.get_response(uri)
abort("HTTP #{res.code}") unless res.is_a?(Net::HTTPSuccess)

data = JSON.parse(res.body)

#puts data["key"]
#puts data["key2"]
#puts data["key3"]

puts JSON.pretty_generate(data)