require 'csv'

class Person
  attr_accessor :first_name, :last_name, :person_id

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @person_id  = rand(1000..9999)
  end

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
    filename = "#{person_id}-file.csv"
    save_file = CSV.open(filename, "w") do |csv|
      csv << [first_name, last_name]
    end

    puts "File #{filename} saved for employee with ID #{person_id}"
    return !save_file.nil?
  end
end

person1 = Person.new("Bob", "Thimpson")


#puts person1.valid?
#p person1.to_csv

puts person1.save
