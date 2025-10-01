# The Monkey class allows you to create a monkey who has a name and bananas
class Monkey
    # Constructor sets name and number of bananas based on paramaters
    def initialize(numBananas, name)
        @numBananas = numBananas
        @name = name
    end
    # Subtracts a banana from the monkeys stash and prints a message
    def eatBanana
        if @numBananas > 0
            @numBananas -= 1
            puts "Yum! #{@name} now has #{@numBananas} banana(s)"
        else
            puts "#{@name} has no more bananas..."
        end
    end
    # Gives the monkey a specified number of bananas
    def giveBanana(amount)
        @numBananas += amount
        puts "#{@name} now has #{@numBananas} banana(s)"
    end
end

# Subclass, just in case your monkey hates bananas.
# Inherits constructor and giveBanana(...) while overriding eatBanana 
class MonkeyWhoHatesBananas < Monkey
    # He wont eat it.
    def eatBanana
        puts "#{@name} refuses to eat the banana, and throws his feces at you."
    end
end

# Three monkeys, one hates bananas.
monkey1 = Monkey.new(10, "George")
monkey2 = Monkey.new(0, "DK")
monkey3 = MonkeyWhoHatesBananas.new(100, "Jeremy")

# Tests
monkey1.eatBanana
monkey2.eatBanana
monkey3.eatBanana
monkey1.giveBanana(4)
monkey2.giveBanana(3)
monkey3.giveBanana(100)


