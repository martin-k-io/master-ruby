require 'httparty'
require 'nokogiri'
require 'awesome_print'

def car_shopper
  response = HTTParty.get('https://code.evgenyrahman.com/rubycourse/carlist.html')
  parsed_html = Nokogiri::HTML(response.body)

  # Returns a collection of all card car classes
  car_listings = parsed_html.css('.card.car')
  # pp car_listings.first

  cars = car_listings.map do |each_car|
    {
      make: each_car.css('.make').text,
      year: each_car.css('.year').text,
      price: each_car.css('.price').text,
      rating: each_car.css('.star.rating').attribute('data-rating').value
    }
  end

  # ap cars

  File.open('car_listings.json', 'wb') do |f|
    f << cars.to_json
  end
end

car_shopper
