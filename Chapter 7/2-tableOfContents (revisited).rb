title = "Table of Contents"
chapters = [["Numbers", 1],
            ["Letters", 5],
            ["Variables", 9]]

puts title.center(50)
puts

chap_num = 1

chapters.each do |chap|
    name, page = chap

    beginning = "Chapter #{chap_num}: #{name}"
    ending = "page #{page}"

    puts beginning.ljust(25) + ending.rjust(25)
    chap_num += 1
end