i = 0


# Loop
loop do
  i = i + 1
  if (i % 2) == 1
    next
  end
  puts i
  break if i > 10
end


# Until
i = 0

until i == 5 do
  puts i
  i += 1
end


# While - one-liners
i = 0

i += 1 while i < 10

puts i if i > 10

puts i unless i < 10
