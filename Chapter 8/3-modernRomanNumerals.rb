#between 1 and 3999
def roman_numeral(num)
    raise "Number chosen must be between 1 and 3999" if num < 1 || num > 3999
    exceptions_checking = {
        hunds_ec: (num % 1000 / 100),
        tens_ec: (num % 100 / 10),
        ones_ec: (num % 10)
    }
    digits = {
        thous: (num / 1000),
        five_hunds: (num % 1000 / 500),
        hunds: (num % 500 / 100),
        fifties: (num % 100 / 50),
        tens: (num % 50 / 10),
        fives: (num % 10 / 5),
        ones: (num % 5 / 1)
    }
    
    subtracting_options_nine = ["CM", "XC", "IX"].freeze
    subtracting_options_four = ["CD", "XL", "IV"].freeze
    num_letters = ["D", "C", "L", "X", "V", "I"].freeze

    exceptions_checking_index = 0
    digits_index = 0
    num_letters_index = 0

    roman = "M" * digits.values[digits_index]
    digits_index += 1

    3.times do |digit|
        if exceptions_checking.values[exceptions_checking_index] == 9
            roman << subtracting_options_nine[exceptions_checking_index]
        elsif exceptions_checking.values[exceptions_checking_index] == 4
            roman << subtracting_options_four[exceptions_checking_index]
        elsif exceptions_checking.values[exceptions_checking_index] =! 0
            roman << num_letters[num_letters_index] * digits.values[digits_index]
            num_letters_index += 1; digits_index += 1
            roman << num_letters[num_letters_index] * digits.values[digits_index]
        else
            num_letters_index += 1; digits_index += 1
        end
        exceptions_checking_index += 1
    end
    roman
end

puts "Want to know how to write a number in 'modern' roman numerals? \nWrite it here:"
#selection = gets.chomp.to_i
puts(roman_numeral(708))