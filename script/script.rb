require 'addressable/uri'
require 'rest-client'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/contacts'
).to_s

puts RestClient.post(url, {:contact => {:address => "The lightside of the moon",
                         :email => "you@dowanna.know",
                         :phone_number => "666-666-6665",
                         :name => "OTTOnto",
                         :user_id => 1}})