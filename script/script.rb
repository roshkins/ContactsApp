require 'addressable/uri'
require 'rest-client'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/1/favorites'
).to_s

puts RestClient.post(url, { :favorite => {:favorited_id => 1} } )