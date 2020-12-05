# For files ruby knows about which are included in the PATH
# i.e. which are part of ruby itself
require 'csv'

# Loads a local ruby file
require_relative 'utils'

File
CSV

# The method has a global scope
say_hello "This is my message"

# The variable from the utils does NOT have a global scope
# and we cannot simpy share a variable and load it

# puts temperature

# Displays the name of the current file we're working in
puts __FILE__
