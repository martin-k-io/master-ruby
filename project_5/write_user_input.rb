f = File.open("bar.txt", "a")

5.times do |i|
  puts "Please write some text"
  some_text = gets.chomp

  f.write "#{some_text}\n"
end

f.close
