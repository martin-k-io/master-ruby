require 'csv'

class Person
  attr_accessor :first_name, :last_name, :person_id, :filename

  def initialize(first_name, last_name, person_id = rand(1000..9999))
    @first_name = first_name
    @last_name  = last_name
    @person_id  = person_id
    @filename = "#{person_id}-file.csv"
  end

  def self.filename(person_id)
    "#{person_id}-file.csv"
  end

  def valid?
    if (!first_name.nil? && first_name.length > 0) &&
       (!last_name.nil? && last_name.length > 0)
      true
    else
      print 'Person attributes not valid.'
      false
    end
  end

  def to_csv
    CSV.generate do |csv|
      csv << [first_name, last_name]
    end
  end

  # class method
  def self.read(person_id)
    filename = Person.filename(person_id)

    if File.exist?(filename)
      File.open(filename, 'r') do |file|
        record = CSV.parse(file.read)[0]
        return Person.new(record[0], record[1], person_id)
      end
    else
      puts 'The person record does not exist'
    end
  end

  def self.destroy(person_id)
    filename = Person.filename(person_id)

    if File.exist?(filename)
      File.delete(filename)
      puts "The file #{filename} was destroyed!"
      true
    else
      puts 'File does not exist'
      false
    end
  end

  def create
    return false unless valid?

    if !File.exist?(filename)
      save
    else
      puts "Cannot create file. File #{filename} already exists for #{person_id}"
      false
    end
  end

  def update
    return false unless valid?

    if File.exist?(filename)
      save
      puts "File #{filename} updated for employee with ID #{person_id}"
    else
      puts 'File does not exist, update cannot be performed'
      false
    end
  end

  # instance method
  def save
    puts ' Cannot save file.' unless valid?

    save_file = CSV.open(filename, 'w') do |csv|
      csv << [first_name, last_name]
    end

    puts "File #{filename} saved for employee with ID #{person_id}"
    !save_file.nil?
  end

  def walk; end

  def talk; end
end
