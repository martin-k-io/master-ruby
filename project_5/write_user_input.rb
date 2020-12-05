puts "Please write some text"
some_text = gets.chomp

File.open("bar.txt", "a") do |f|
  f.write "#{some_text}\n"
end
