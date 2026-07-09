names = ["johnson", "smith", "weinberg", "filmore"]
puts "CAN'T YOU SEE I'M BUSY?! MAKE IT FAST, #{names[rand(4)].upcase}!"
request = gets.chomp
puts "WHADDAYA MEAN \"#{request.upcase}\"?!? YOU'RE FIRED!!"