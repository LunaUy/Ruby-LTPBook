available_flavors = ["vanilla", "strawberry", "banana split", "tramontana", "pistachio", "white chocolate", "plain chocolate", "passion fruit"]
available_flavors[rand(8)]
final = [] # this will hold the winners from 1 & 2
winner = nil # this will hold the final winner
def ask_for_winner(flavors)
    puts "0. "+flavors[0]
    puts "1. "+flavors[1]
    while true
        answer = gets.chomp.downcase
        if (answer == "0" || answer == "1")
            return flavors[answer.to_i]
        else
            puts "Please answer '0' or '1'."
        end
    end
end
=begin
puts "Welcome to ULTIMATE FLAVOR TOURNAMENT!"

puts "How many matches do you want to play? (1, 3, 7, 15)"
matches_quantity = gets.chomp

puts "MATCH 1: Which flavor is best?"
puts "CHAMPIONSHIP MATCH!"
puts "Which flavor is best?"
winner = ask_for_winner(match_3)
puts "And the Ultimate Flavor Champion is:"
puts winner.upcase+"!!"
=end