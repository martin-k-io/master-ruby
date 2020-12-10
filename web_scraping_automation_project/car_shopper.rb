require 'httparty'
require 'nokogiri'

def car_shopper
  response = HTTParty.get('https://code.evgenyrahman.com/rubycourse/carlist.html')
  parsed_html = Nokogiri::HTML(response.body)

  # Returns a collection of all card car classes
  car_listings = parsed_html.css('.card.car')

  p car_listings.length

  puts "Welcome to the card shopper!"

end

car_shopper
