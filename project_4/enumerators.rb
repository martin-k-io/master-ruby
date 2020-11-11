arr = ['fish','pizza','sports','umbrella']

arr.each_with_index do |i, j|
  puts j.to_s + " " + i
end

# Holds the ability to iterate over the data structure
array_enumerator = arr.each

array_enumerator.each_with_index do |i, j|
  puts "The index is #{i}, the item is #{j}"
end
