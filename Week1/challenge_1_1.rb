def convert(f)
    celcius = (f - 32) * 5.0/9.0
    puts celcius
end

nums = [212, 98.6, 32, -40, -459]
nums.each {|f| convert(f)}