puts "HEY, HONEY :)"
while true
    said = gets.chomp
    break if said == "BYE"
    if said == said.upcase
        puts "NO, NOT SINCE #{rand(1930..1950)}!"
    else
        puts "HUH?! SPEAK UP SONNY!"
    end
end
puts "BYE, SWEETIE!"