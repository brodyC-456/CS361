class Love
  attr_accessor :amount
  def initialize(amount);
    @love = amount
  end

  def get_amount
    return @amount
  end

  def set_amount(new_love)
    @amount = new_love
  end

end


class Breed
  attr_accessor :breed, :mass, :value
  def initialize(breed, mass);
    @mass = mass
    @value = mass*5
    @love = Love.new(1000)
  end

  def set_value(new_val)
    @value = new_val
  end

  def add_mass(added_mass)
    @mass = @mass + added_mass
  end

  def get_love
    return @love
  end

  def change_love(new_love)
    @love.amount = new_love
  end

  def print_object_value()
    puts @value
  end

end


class Puppy
  attr_accessor :breed
  def initialize(breed);
    @breed = breed
    @love = breed.get_love
    
  end

  def change_love_of_puppy(new_love)
    breed.change_love(new_love)
    return new_love
  end


end

lab = Breed.new("lab", 1000)
puppy = Puppy.new(lab)


puts "Your puppy's current Love for you: " 
puts puppy.change_love_of_puppy(2)