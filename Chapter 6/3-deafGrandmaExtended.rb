puts "HEY, HONEY :)"
bye_count = 0
while true
    said = gets.chomp
    if said == "BYE"
        bye_count += 1
    else
        bye_count = 0
    end
    break if bye_count >= 3
    if said == said.upcase
        puts "NO, NOT SINCE #{rand(1930..1950)}!"
    else
        puts "HUH?! SPEAK UP SONNY!"
    end
end
puts "BYE, SWEETIE!"