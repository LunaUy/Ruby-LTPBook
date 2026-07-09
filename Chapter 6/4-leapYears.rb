def leap_year?(year)
    (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) 
end

puts "Enter a year:"
start_year = gets.chomp.to_i
puts "Enter a second year:"
end_year = gets.chomp.to_i

min_year, max_year = [start_year, end_year].minmax
leap_years = []

(min_year...max_year).each do |year|
    leap_years << year if leap_year?(year)
end

puts "The leap years between #{min_year} and #{max_year} are: #{leap_years.join(', ')}"