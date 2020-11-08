puts "Please enter the day"

# Removes carriage return characters
special_day = gets.chomp

today = "Tuesday"

if special_day == today
  puts "Today is the special day!"
elsif special_day == "Thursday"
  puts "The special day is Thursday"
else
  puts "Today is not the special day!"
end

if 5 < 4
  puts "We knew it"
end
