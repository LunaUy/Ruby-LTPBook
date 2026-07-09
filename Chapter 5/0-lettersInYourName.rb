puts "Hey there :) What's your name?"
name = gets.chomp
puts "What's your surname?"
surname = gets.chomp
letters = name.length + surname.length
puts "Did you know that there are #{letters} letters in your name and surname combined?!"