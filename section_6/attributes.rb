class Person

  # creates the access methods for the attributes
  # both read and write the class variables/attributes
  attr_accessor :first_name, :last_name


  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  # def first_name
  #   @first_name
  # end

  def first_name=(first_name)
    @first_name = first_name
  end

  # def last_name
  #   @last_name
  # end

  def full_name
    "#{@first_name} #{@last_name}"
  end
end

person1 = Person.new("Bob", "Smith")

puts person1.first_name
person1.first_name = "Peter"

puts "after set"
puts person1.first_name
