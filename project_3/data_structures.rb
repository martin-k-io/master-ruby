# Arrays
a = []
b = [1, 3, 5]

# puts b
# puts b[0]

def give_me_a_list(arg)
  arg.length
end

puts give_me_a_list(b)
puts give_me_a_list(a)
puts b.first
puts b.last


c = [1,2,3,4,5]
d = Array.new(5)

# Creates an array with 5 elements with default value 1
e = Array.new(5, 1)

f = Array.new([1,2,3])

p c
p d
p e
p f
