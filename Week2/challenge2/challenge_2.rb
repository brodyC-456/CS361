str = "Cool"
vowel_count = 0
str.each_char do |c|
    if c == 'a' or c == 'i' or c == 'o' or c == 'u' or c == 'e'
        vowel_count += 1
    end
end
puts vowel_count
str <<= " Shirt"
puts str
vowel_count = 0
str.each_char do |c|
    if c == 'a' or c == 'i' or c == 'o' or c == 'u' or c == 'e'
        vowel_count += 1
    end
end
puts vowel_count
new = ""
str.each_char do |c|
    if c != 'a' and c != 'i' and c != 'o' and c != 'u' and c != 'e'
        new <<= c 
    end
end
puts new
vowel_count = 0
new.each_char do |c|
    if c == 'a' or c == 'i' or c == 'o' or c == 'u' or c == 'e'
        vowel_count += 1
    end
end
puts vowel_count
new <<= " What are you on about?"
puts new
vowel_count = 0
new.each_char do |c|
    if c == 'a' or c == 'i' or c == 'o' or c == 'u' or c == 'e'
        vowel_count += 1
    end
end
puts vowel_count
new2 = ""
new.each_char do |c|
    if c != 'a' and c != 'i' and c != 'o' and c != 'u' and c != 'e'
        new2 <<= c 
    end
end
puts new2
vowel_count = 0
new2.each_char do |c|
    if c == 'a' or c == 'i' or c == 'o' or c == 'u' or c == 'e'
        vowel_count += 1
    end
end
puts vowel_count


