# Don't modify this class
class Duck
  def quack
    puts "Quack!"
  end

  def waddle
    puts "Waddle"
  end
end

# Don't modify this function
def duck_activate(d)
  d.quack
  d.quack
  d.waddle
  d.quack
end

# TODO: Fix this class so that it walks and talks like a duck
class Panther
  # Do not modify this method
  def roar
    puts "Roar!"
  end

  # Do not modify this method
  def prowl
    puts "You hear nothing"
  end

  def quack
    puts "RoarQuack!"
  end

  def waddle
    puts "SneakWaddle"
  end

end

# Don't modify below this line
d = Duck.new()
duck_activate(d)

p = Panther.new()
duck_activate(p)

# I added two methods to panther, "quack" and "waddle", so that panther can be used in duck_activate. Panther now implements the duck interface,
# so it can be used as a duck regardless of its class name.