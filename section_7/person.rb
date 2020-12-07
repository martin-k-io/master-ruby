require 'csv'

class Person
  attr_accessor :first_name, :last_name

  def valid?
    (!first_name.nil? && first_name.length > 0) &&
    (!last_name.nil? && last_name.length > 0)
  end

  def walk
  end

  def talk
  end

  def to_csv
    CSV.generate do |csv|
      csv << [first_name, last_name]
    end
  end
end

person1 = Person.new

person1.first_name = "Bob"
person1.last_name = "Thompson"

#puts person1.valid?

p person1.to_csv
