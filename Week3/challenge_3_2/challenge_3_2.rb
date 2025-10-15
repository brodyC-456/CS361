class Stuff
    attr_accessor :name, :value
    def initialize
        @name = "a thing"
        @value = 10
    end
end

class Container
    attr_accessor :inside 
    def initialize(stuff)
        @inside = stuff
    end
end


class Chest
    attr_accessor :contents 
    def initialize(things)
        @contents = things
    end
    

    def getItemValue(chest)
        chest.contents.inside.value
    end
end


item = Stuff.new
pouch = Container.new(item)
chest = Chest.new(pouch)

puts chest.getItemValue(chest)