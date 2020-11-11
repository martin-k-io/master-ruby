arr = [1,2,3,4,5]

def puts_element(element)
  puts element
end

for i in arr
  puts_element(i)
end

# Similar to the above implementation

# We are passing the logic from the block as an argument
# to the each method

# The block {} yields back the result to the each method
arr.each { |element| puts element }

# More equivalent to this one:

def puts_element(element)
  yield element #yield(element)
end

for i in arr
  puts_element(i) { |j| puts j }
end

# yields is as if we're asking for replacement
# of yield with { |i| puts i }


# Equivalent syntax of
# arr.each { |element| puts element }
# But more appropriate for multiline logic
arr.each do |element|
  new_element = 2 * element
  puts new_element
end
