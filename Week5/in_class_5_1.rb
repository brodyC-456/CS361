class Player
  attr_accessor :name, :hp, :str, :dex, :con, :int, :wis, :cha

  def initialize(name)
    @name = name
    @hp = 10
    @stats = Stats.new(9, 12, 8, 18, 10, 2)
    @armor = [Armor.new("iron helmet", 8), Armor.new("chain mail", 16)]
    @weapon = [Weapon.new("Short Sword", "1d6") ]  # name, damage
  end

  def damage(p)
    @hp -= p
  end

  def compute_damage(base)
    # Pretend this is some complex thing with AC
  end

  # And more functions here to handle stats, weapons, and armor
end

class Stats:
    attr_accessor :str, :dex, :con, :int, :wis, :cha
    initialize(str, dex, con, int, wis, cha)
      @str = str        
      @dex = dex
      @con = con
      @int = int
      @wis = wis
      @cha = cha
    end
end

class Armor
    attr_accessor :name, :ac
    initialize(name, ac)
      @name = name
      @ac = ac
    end
end

class Weapon
    attr_accessor :name, :damage
    initialize(name, damage)
      @name = name
      @damage = damage
    end
end


p = Player.new("Alfredo")