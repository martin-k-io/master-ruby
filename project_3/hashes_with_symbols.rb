a = {
  name: "Evgeny",
  profession: "Programmer"
}

b = {
  :name => "Evgeny",
  :profession => "Programmer"
}

# a and b are equivallent
# symbols are immutable
p a
p b

p a[:name]
p b[:name]

# Convert string to symbol
name = "name".to_sym
p a[name]

# Convert symbol to string
name2 = :name.to_s
p b[name2]

#puts a.fetch(:first_name) # causes an error
puts a[:first_name] # returns nil


# checks if key exists
puts a[:name] if a.has_key?(:name)

# p a.index("Evgeny") # Deprecated
p a.key("Evgeny")
