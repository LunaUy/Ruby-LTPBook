#  Hours in a year. How many hours are in a year? # Depends on if it's a leap year
    puts "Enter a year:"
    selected_year = gets.to_i

    days = 365

    def leap_year(users_year)
        days += 1 if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
    end

    hours_in_a_year = 24 * days
    puts "There are #{hours_in_a_year} hours in that year."