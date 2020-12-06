class Person
  def initialize(first_name, last_name = "Ibrahimovich")
    @first_name = first_name
    @last_name = last_name
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def walk
    puts "I'm walking"
  end

  def speak_my_name
    puts "My name is #{@first_name} #{@last_name}"
  end

  def ==(other)
    (@first_name == other.first_name) &&
    (@last_name == other.last_name)
  end
end

person = Person.new("Evgeny")
p person
p person.speak_my_name

person2 = Person.new("Mashrur", "Hossain")
p person2
p person2.speak_my_name

p person.object_id
p person2.object_id

p person.class
p person.class.superclass
p person.class.superclass.superclass
p person.class.superclass.superclass.superclass

puts person == person2

person3 = Person.new("Mashrur", "Hossain")

puts person2 == person3

# p Class.superclass
# p Class.superclass.superclass
# p Class.superclass.superclass.superclass
