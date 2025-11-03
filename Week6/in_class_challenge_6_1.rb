class EventManager
  R = 6378100   # radius of the earth in m

  def initialize(eventList)
    @eventList = eventList
  end

  def findEventsNear(lat, lon, maxDist=5000)
    events = []
    distance_calc = DistanceCalculation.new

    @eventList.each { |event|
      name, type, elat, elon = event.split(":")
      elat = elat.to_f
      elon = elon.to_f
      

      if distance_calc.distance(lat, lon, elat, elon) < maxDist
        events << event
      end
    }
    
    events
  end

  def findEarthquakesNear(cityName)
    cityRecord = nil

    @eventList.each { |event|
      name, type, elat, elon = event.split(":")
      elat = elat.to_f
      elon = elon.to_f

      if type == "city" && name == cityName
        cityRecord = event
      end
    }

    if cityRecord.nil?
      return nil
    end

    name, type, clat, clon = cityRecord.split(":")
    clat = clat.to_f
    clon = clon.to_f

    events = []

    @eventList.each { |event|
      name, type, elat, elon = event.split(":")
      elat = elat.to_f
      elon = elon.to_f

      if type == "earthquake"
        if distance(elat, elon, clat, clon) < 5000
          events << event
        end
      end
    }
    events
  end

  def addEvent(event)
    @eventList << "#{event.name}:#{event.type}:#{event.lat}:#{event.lon}:#{event.time}"
  end
end


class Event
  attr_accessor :name, :type, :lat, :lon, :time
  def initialize(name, type, lat, lon, time=-1)
    @name = name
    @type = type
    @lat = lat
    @lon = lon
    @time = time
  end
end

class DistanceCalculation
    def distance(lat1, lon1, lat2, lon2)
    # https://stackoverflow.com/a/27943

    dLat = self.deg2rad(lat2 - lat1)
    dLon = self.deg2rad(lon2 - lon1)
    a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
      Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) *
      Math.sin(dLon / 2) * Math.sin(dLon / 2)
    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
    R * c  # distance in m
  end

  def deg2rad(d)
    d * Math::PI / 180
  end
  


starting_events = [
  "some volcano:volcano:40.12120:-121.3455:21451",
  "some earthquake:earthquake:40.51230:-121.23425:87153",
  "another earthquake:earthquake:39.23890:-120.23985:17354",
  "yet another earthquake:earthquake:39.23223:-120.23125:16524",
  "another volcano:volcano:43.32890:-122.3289:23856",
  "a geyser:geyser:39.23223:-120.23125",
  "Townville:city:44.05645:-121.30812"
]

em = EventManager.new(starting_events)

em.addHotspring(Event.new("my favorite hotspring", "Hotspring" 46.1231, -115.23234))
em.addCity(Event.new("Cityton", "City", 40.5232, -121.23453))
em.addVolcanoEvent(Event.new("yet another volcano", "Volcano", 15.52232, -107.03521, 256923))

x = em.findEventsNear(40.5, -121.2, 163000)
pp x

puts "------------------------"

x = em.findEarthquakesNear("Cityton")
pp x