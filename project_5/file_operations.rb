# File modes

# r - read only - requires the file to exist
# w - writable mode - requries the file to exist
# a - append - does not require the file to initially exist

# File.open("foo.txt", "r")
# File.open("foo.txt", "w")
# File.open("sample.txt", "a")


# Read file's content - the whole file
f = File.open("foo.txt", "r")
#puts f.read

# Prints one line at a time
#puts f.readline
#puts f.readline
#puts f.readline

# Read file line by line
File.open("foo.txt", "r").each do |line|
  # Literal representation
  #p line

  puts line.chomp + " " + " - end of line"

  # puts line + " " + " - end of line"
end

f.close


# Automatically closes teh file with the execution of the block
File.open("foo.txt", "r") do  |f|
  puts f.read
end

# Appends to end of file
File.open("foo.txt", "a") do |f|
  f.write("New line of text\n")
end

# Write to file - replaces existing content
File.open("foo.txt", "w") do |f|
  f.write("New line of text\n")
end

5.times do |i|
  File.open("foo.txt", "a") do |f|
    f.write("New line of text\n")
  end
end
