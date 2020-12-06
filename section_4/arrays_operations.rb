# Map, Select, Reject
arr = ['red', 'green', 'yellow']

arr.each do |element|
 if element != 'yellow'
   #puts element
   arr.delete(element)
 end
end

p arr


# Pushes the elements whete true conditions are met
arr2 = arr.select do |element|
  element != 'yellow'
end

p arr2

# The opposite of select
arr3 = arr.reject { |element| element == 'yellow' }

# This would change the initial element arr
arr4 = arr.reject! { |element| element == 'yellow' }

arr5 = arr.map do |i| i * 2
  if i == 5
    i * 2
  else
    i
  end
end

p arr5
