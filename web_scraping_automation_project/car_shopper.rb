require 'httparty'
require 'nokogiri'
require 'pp'

def car_shopper
  response = HTTParty.get('https://code.evgenyrahman.com/rubycourse/carlist.html')
  parsed_html = Nokogiri::HTML(response.body)

  # Returns a collection of all card car classes
  car_listings = parsed_html.css('.card.car')

  pp car_listings.first

  car_listings.each do |each_car|
    pp each_car.css('.make').text
  end





  puts "Welcome to the card shopper!"

end

car_shopper
