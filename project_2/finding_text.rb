puts "Please enter some information:"

user_input = gets.chomp

if user_input.include? "name"
  puts "The user entered their name"
else
  puts "The user didn't mention a name"
end
