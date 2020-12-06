# Map, Select, Reject

hash = { one: 1, two: 2, three: 3 }

hash2 = hash.select { |k, v| v > 2 }

hash2 = hash.reject { |k, v| v > 2 }

# Map returns arrays
hash2 = hash.map { |k, v| v * 100 }


p hash2

# Return a new hash from map
hash3 = {}
hash.map { |k, v| hash3[k] = v * 100 }

hash.each { |k, v| hash3[k] = v * 100 }
