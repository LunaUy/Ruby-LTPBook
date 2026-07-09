def ask
    words = []
    while true
        word = gets.chomp
        break if word.empty?

        words << word
    end

    if words.empty?
        puts "Hey! Write something :)"
        ask()
    else
        puts "Sweet! Here they are, sorted:"
        puts words.sort
    end
end

puts "Give me some words, and I will sort them:"
ask()