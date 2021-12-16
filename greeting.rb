
puts "Hi, what's your name?"

name = gets.chomp

if name.chr == "S"
  puts name.upcase
else
  puts "Hi, #{name}"
end
