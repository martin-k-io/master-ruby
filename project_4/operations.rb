arr = ['a','b','c','d','e',]

arr.each_with_index do |element, index|
  puts element
  arr[index] = index
end

p arr


hash1 = { shoes: 'black', belt: 'brown' }

hash1.each do |key, value|
  hash1[key] = 'blue'
end

p hash1
