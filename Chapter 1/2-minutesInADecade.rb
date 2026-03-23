# Minutes in a decade. How many minutes are in a decade?
    puts "Enter the starting year of the decade:"
    start_year = gets.to_i

    leap_days = 0

    year = start_year
    while year < start_year + 10
        if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
            leap_days += 1
        end
        year += 1
    end

    days = (10 * 365) + leap_days
    minutes_in_decade = days * 24 * 60

    puts "The decade from #{start_year} to #{start_year + 10} has #{minutes_in_decade} minutes."

# Minutes in a decade (alternative method)
    def leap_year?(year)
        (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) 
    end
    
    puts "Enter the starting year of the decade:"
    start_year = gets.to_i

    leap_days = 0
    10.times do |i|
        leap_days += 1 if leap_year?(start_year + i)
    end
    days = (10 * 365) + leap_days
    minutes_in_decade = days * 24 * 60
    puts "The decade from #{start_year} to #{start_year + 10} has #{minutes_in_decade} minutes."