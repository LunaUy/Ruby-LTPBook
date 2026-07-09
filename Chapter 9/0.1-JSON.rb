require "json"

test_array = ["Give Quiche A Chance",
              "Mutants Out!",
              "Chameleonic Life-Forms, No Thanks"]

# Here's half of the magic:
test_string = test_array.to_json
# You see? Kind of like 'to_s', and it is in fact a string, but it is a JSON desription of 'test_array'.

filename = "RimmerTShirts.txt"

File.open(filename, "w") do |f|
  f.write(test_string)
end

read_string = File.read(filename)

# And the other half of the magic:
read_array = JSON.parse(read_string)

puts(read_string == test_string)
puts(read_array == test_array)