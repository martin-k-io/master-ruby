d = %w(a b c d e)

# Literal representation
# data structure/type and values within
p d

words = "the quick brown fox".split
p words.reverse

# Not permanently changing the array
p words + ['1', '2']

# Changes the initial array
p words.concat(['1'])
p words

other_words = "the slow slimey snail".split

p other_words

# Removes last array entry
a = other_words.pop

puts a
p other_words

other_words.push("dog")
p other_words

# Retrieving data from Array by index
puts other_words[2]
p other_words.length

# Get the last element by index
p other_words[other_words.length - 1]
