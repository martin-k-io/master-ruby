require_relative "person.rb"

person = Person.new("Lisa", "Jones")

person.create

person.last_name = "Roberts"
person.update

person = Person.read(person.person_id)

#Person.destroy(person.person_id)
 
