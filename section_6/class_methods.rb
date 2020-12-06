# Class methods are something that all class members
# should have as a behaviour

class Person
  def self.deserves_respect?
    true
  end

  def self.mineral?
    false
  end
end

puts Person.deserves_respect?

person1 = Person.new
person1.deserves_respect? # Not an instance method, so error will be raised

puts person1.class.deserves_respect?
