require 'csv'

class Person
  attr_accessor :first_name, :last_name, :person_id

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

  def  save
    save_file = CSV.open("#{person_id}-file.csv", "w") do |csv|
      csv << [first_name, last_name]
    end

    return !save_file.nil?
  end
end

person1 = Person.new

person1.first_name = "Bob"
person1.last_name = "Thompson"
person1.person_id = "1001"

#puts person1.valid?
#p person1.to_csv

puts person1.save
