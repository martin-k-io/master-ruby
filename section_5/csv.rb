require 'csv'

# Returns an array of arrays for each line
csv_from_file = CSV.read('data.csv')

csv_string = "martin,developer,satisfying,cheese"

parsed_string = CSV.parse(csv_string)

p parsed_string

p csv_from_file
p csv_from_file.first
p csv_from_file.first.first

seasons_and_months = ['spring', 'autumn', 'june', 'july']

# Writes the data into the file
CSV.open('data.csv', "a") do |csv|
  csv << seasons_and_months
end

some_string = CSV.generate do |csv|
  csv << seasons_and_months
end

p some_string
