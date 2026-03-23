puts "Hello there, what's your name?"
name = gets.chomp.capitalize
puts "What's your middle name? (if you don't have one just type 'n'.)"
middleName = gets.chomp.capitalize
puts "Finally, what's your last name?"
lastName = gets.chomp.capitalize
if middleName == "N"
    puts "Hello, #{name} #{lastName}!"
    puts "How are you doing? :)"
else
    puts "Hello, #{name} #{middleName} #{lastName}!"
    puts "How are you doing #{name}? :)"
end