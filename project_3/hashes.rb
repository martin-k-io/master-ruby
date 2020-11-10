a = {}

# p a

h = {
 "a":"b"
}

p h

k = {
  5 => 0
}

p k

b = Hash.new

# p b
# { key => value }
c = {
      "food" => "pizza",
      "car" => "toyota"
    }

p c
p c.keys
p c.values

p c["food"]
p c["car"] # returns the value associated with the key
p c["house"] # returns a nil

d = [
      {
        "name" => "Evgeny",
        "profession" => "Programmer"
      },
      {
        "name" => "Bob",
        "profession" => "Artist"
      }
    ]

person1 = d[0]
person2 = d[1]

def print_programmer_name(person)
  if person["profession"] == "Programmer"
    puts person["name"]
  end
end

print_programmer_name(person1)
