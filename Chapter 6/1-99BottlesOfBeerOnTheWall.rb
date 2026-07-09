start_num = 99
num_now = start_num

while num_now > 2
    puts "#{num_now} bottles of beer on the wall, #{num_now} bottles of beer!"
    num_now -= 1
    puts "Take one down and pass it around, #{num_now} bottles of beer on the wall!"
end

puts "2 bottles of beer on the wall, 2 bottles of beer!"
puts "Take one down and pass it around, 1 bottle of beer on the wall!"
puts "1 bottle of beer on the wall, 1 bottle of beer!"
puts "Take one down and pass it around, no more bottles of beer on the wall!"