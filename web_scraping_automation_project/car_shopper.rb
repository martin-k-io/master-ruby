require 'httparty'
require 'nokogiri'
require 'pp'

def car_shopper
  response = HTTParty.get('https://code.evgenyrahman.com/rubycourse/carlist.html')
  parsed_html = Nokogiri::HTML(response.body)

  # Returns a collection of all card car classes
  car_listings = parsed_html.css('.card.car')
  #pp car_listings.first

  car_listings.each do |each_car|
    car = {
      make: each_car.css('.make').text,
      year: each_car.css('.year').text,
      price: each_car.css('.price').text,
      rating: each_car.css('.star.rating').attribute("data-rating").value
    }

    pp car
  end
end

car_shopper
