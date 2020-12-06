(1..5).each do |element|
  puts element
end

# Takes two steps
# prints 1,3,5,7,9
(1..10).step(2) do |i|
  puts i
end

# prints 10,20,30,40,50,60,70,80,90,100
(1..100).step(10) do |i|
  puts i
end

1.upto(5) do |element|
  puts element
end

5.downto(1) do |element|
  puts element
end

5.times do |i|
  puts "Hello there #{i+1}"
end
