random_number = rand 8

print "Enter a number: "

user_input_number = gets.chomp.to_i

product = random_number * user_input_number

puts "The product of #{random_number} and #{user_input_number} is #{product}"
