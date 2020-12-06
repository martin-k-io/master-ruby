words = ["the", "quick", "the", "brown", "fox"]

p words

# Convenience methods (ot syntax sugar)
puts words.first
puts words.last

# deletes the "the" element
words.delete("the")

p words

# Returns a new array with the first 3 elements
p words.take(3)

# Returns an error rather than failing silently(Returning nil)
# if there's no item with index 8
puts words.fetch(8)
