require "json"
require "uri"
require "net/http"

# Example: fetch details about the Ruby repo from GitHub's API
url = "https://api.github.com/repos/ruby/ruby"
uri = URI(url)

res = Net::HTTP.get_response(uri)
abort("HTTP #{res.code}") unless res.is_a?(Net::HTTPSuccess)

data = JSON.parse(res.body)

puts "Repo: #{data["full_name"]}"
puts "Stars: #{data["stargazers_count"]}"
puts "Forks: #{data["forks_count"]}"
