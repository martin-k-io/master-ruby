class Person
  def initialize(first_name, last_name = "Ibrahimovich")
    @first_name = first_name
    @last_name = last_name
  end

  def walk
    puts "I'm walking"
  end

  def speak_my_name
    puts "My name is #{@first_name} #{@last_name}"
  end
end

person = Person.new("Evgeny")
p person
p person.speak_my_name

person2 = Person.new("Mashrur", "Hossain")
p person2
p person2.speak_my_name



p person.class
p person.class.superclass
p person.class.superclass.superclass
p person.class.superclass.superclass.superclass

# p Class.superclass
# p Class.superclass.superclass
# p Class.superclass.superclass.superclass
