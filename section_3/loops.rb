a = 10

# loop do
#   a = a + 1
#   puts "Hello"
# end

while a > 5 do
  a = a - 1
  puts a
end

puts "After the loop"


begin
  puts "What is the choice?"
  choice = gets.chomp
end while choice != "Red"

puts "You chose correctly!"


loop do
  puts "What is the choice?"
  choice  = gets.chomp
  #break if choice == 'exit'
  if choice == 'exit'
    puts "Thank you for visiting!"
    break
  end
end
