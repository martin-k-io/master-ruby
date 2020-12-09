require_relative "person.rb"

#person1 = Person.new("Bob", "Thimpson")

#puts person1.valid?
#p person1.to_csv

#puts person1.save

#p Person.read(9643)

#person = Person.read(9624)
#person.last_name = "Gordon"

#puts person.update

#person = Person.new("Lisa", "Jones")

#p person.create
person = Person.read(4335)
person.last_name = "Roberts"
p person.update
