require_relative "person.rb"

person1 = Person.new("Bob", "Thimpson")

#puts person1.valid?
#p person1.to_csv

puts person1.save

p Person.read(9643)
