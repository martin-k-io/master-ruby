def simple
  a = 4 + 5
  b = a / 2
  "howdy"
end

a = simple

puts a


def sample(number)
  if number > 5
    return "greater than 5"
  else
    return "less than or equal to 5"
  end
end

a = sample 6
b = sample 4

puts a

puts b
