require 'csv'

class Person
  attr_accessor :first_name, :last_name, :person_id

  def initialize(first_name, last_name, person_id = rand(1000..9999))
    @first_name = first_name
    @last_name  = last_name
    @person_id  = person_id
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

  # class method
  def self.read(person_id)
    filename = "#{person_id}-file.csv"

    if File.exist?(filename)
      File.open(filename, 'r') do |file|
        record = CSV.parse(file.read)[0]
        return Person.new(record[0], record[1], person_id)
      end
    else
      puts "The person record does not exist"
    end
  end

  # instance method
  def  save
    filename = "#{person_id}-file.csv"

    save_file = CSV.open(filename, 'w') do |csv|
      csv << [first_name, last_name]
    end

    puts "File #{filename} saved for employee with ID #{person_id}"
    return !save_file.nil?
  end
end
