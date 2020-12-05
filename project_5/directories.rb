puts Dir.pwd

path = Dir.pwd

#path = "./project_5"

if Dir.exist?(path)
  Dir.chdir(path)
end

puts "Files in #{Dir.pwd} are: "
puts Dir.entries(path)

Dir.entries(path).each do |i|
  puts "The filename is : " + i
end
