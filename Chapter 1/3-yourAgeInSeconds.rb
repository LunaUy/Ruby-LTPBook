#This is a personal trial that is not included in the book

# Your age in seconds (input your birthday date)
puts "Ingrese su año de nacimiento:"
year_born = gets.to_i

def year_checking(year_born)
  if (year_born #is not a number )
    puts "El año ingresado no es un número, intente nuevamente:"
    year_born = gets.to_i
    year_checking(year_born)
  elsif (year_born < (Time.now.year - 120))
    puts "Deberías estar en el cielo a esta altura :) Te gustaría continuar con el año ingresado de todas formas? Para continuar ingrese 'y', de lo contrario presione cualquier otra tecla."
    get_answer
  elsif (year_born > Time.now.year)
    puts "No has nacido todavía :) Te gustaría continuar con el año ingresado de todas formas? Para continuar ingrese 'y', de lo contrario presione cualquier otra tecla."
    get_answer
  else
    puts "Naciste en #{year_born}."
  end
end

year_checking(year_born)

def get_answer()
  answer = gets.downcase
  if answer == "y"
    puts "El año seleccionado es #{year_born}."
  else
    puts "Ingrese el nuevo año:"
    year_born = gets.to_i
    year_checking(year_born)
  end
end    

puts "Ingrese su mes de nacimiento: (en números)"
month_born = gets.to_i
month_checking(month_born)

def month_checking(users_month_born)
  if (month_born < 1 || month_born > 12)
    puts "Mes inválido, intente nuevamente:"
    month_born = gets.to_i
    month_checking(month_born)
  elsif (month_born > Time.now.month && year_born == Time.now.year)
    puts "Todavía no llegamos a #{MONTHS[month_born]} este año. Intente nuevamente:"
    month_born = gets.to_i
    month_checking(month_born)
  else
    puts "Naciste en #{MONTHS[month_born]} del año #{year_born}"
  end
end

MONTHS = [nil, "Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"].freeze

puts "Ingrese su día de nacimiento:"
day_born = gets.to_i
day_checking(day_born)

MONTHS_30_DAYS = [4, 6, 9 ,11].freeze

def leap_year?(year)
  (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
end

def day_checking(users_day_born)
  if (day_born < 1 || day_born > 31)
    puts "El día ingresado es inválido, intente nuevamente:"
    day_born = gets.to_i
    day_checking(day_born)
  elsif (leap_year?(year_born) && month_born == 2 && day_born > 29)
    puts "Febrero del #{year_born} es bisiesto y el número ingresado fue mayor a 29. Intente nuevamente:"
    day_born = gets.to_i
    day_checking(day_born)
  elsif ((leap_year?(year_born) != true) && month_born == 2 && day_born > 28)
    puts "Febrero del #{year_born} solo tiene 28 días, el número ingresado es inválido. Intente nuevamente:"
    day_born = gets.to_i
    day_checking(day_born)
  elsif (MONTHS_30_DAYS.include?(month_born) && day_born == 31)
    puts "El mes #{MONTHS[month_born]} no tiene 31 días. El número ingresado es inválido. Intente nuevamente:"
    day_born = gets.to_i
    day_checking(day_born)
  elsif year_born == Time.now.year && month_born == Time.now.month && day_born > Time.now.day
    puts "Este año todavía no llegamos al día #{day_born}. El número ingresado es inválido. Intente nuevamente:"
    day_born = gets.to_i
    day_checking(day_born)
  else
    puts "La fecha de nacimiento ingresada fue #{day_born}/#{month_born}/#{year_born}. Si desea continuar con dicha fecha ingrese 'y', de lo contrario presione cualquier otra tecla."
    continuar
  end
end

complete_date_born = day_born/month_born/year_born

def continuar()
  answer = gets.downcase
  if answer == "y"
    puts "Se continuará con la fecha #{}"
  else
    puts "Ingrese su año de nacimiento:"
    year_born = gets.to_i
    year_checking(year_born)
    puts "Ingrese su mes de nacimiento: (en números)"
    month_born = gets.to_i
    month_checking(month_born)
    puts "Ingrese su día de nacimiento:"
    day_born = gets.to_i
    day_checking(day_born)
  end
end