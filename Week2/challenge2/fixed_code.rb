# Eric Orr: 6

inputArray = ARGV
currentString = ""

def countVowels(str)
    vowels = "aeiou"
    vowelCount = 0
    str.each_char do |char|
        if vowels.include?(char)
            vowelCount += 1
        end
    end
    vowelCount
end

def removeVowels(str)
    str.gsub!(/[aeiouAEIOU]/, '')
end

currentString << inputArray[0]
puts "Vowel Count: #{countVowels(currentString)}"
currentString << inputArray[1]
puts "Vowel Count: #{countVowels(currentString)}"
removeVowels(currentString)
puts "Vowel Count: #{countVowels(currentString)}"
currentString << inputArray[2]
puts "Vowel Count: #{countVowels(currentString)}"
removeVowels(currentString)
puts "Vowel Count: #{countVowels(currentString)}"