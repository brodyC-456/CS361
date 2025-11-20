class Employee

  def prepare(bike)
    if bike.class < Bike
      bike.setup
    else
      puts 'Uhh, boss, I dunno how to do that.'
    end
  end

end

class Bike
    def setup
        puts "I am a basic bike"
    end
end

class BmxBike < Bike

  def setup
    puts 'Cleaning...'
  end

end

class RoadBike < Bike

  def setup
    puts 'Lubricating gears...'
  end

end

class MountainBike < Bike

  def setup
    puts 'Adjusting suspension...'
  end

end

class Tricycle < Bike

  def setup
    puts 'Adjusting seat...'
  end

end

bikes = [BmxBike.new, RoadBike.new, MountainBike.new, Tricycle.new]

employee = Employee.new

bikes.each do |bike|
  employee.prepare(bike)
end