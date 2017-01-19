class System
 attr_reader :bodies
  def initialize
    @bodies = []
  end
  def add(body_name)
    @bodies << body_name
  end
  def total_mass
    @total_mass = 0
    bodies.each do |body|
        @body_mass = bodies.mass
    @total_mass += @body_mass
    end
    "The total mass of #{system} is #{total_mass}"
  end

end

class Body
    attr_reader :name, :mass
  def initialize(name, mass)
    @name = name
    @mass = mass
  end
end

class Planet < Body
  def initialize(name, mass, day, year)
    super(name, mass)
    @day = day # How long a day takes in hours
    @year = year # How long a year takes in days
  end
end

class Star < Body
  def initialize(name, mass, type)
    super(name, mass)
    @type = type

  end

end

class Moon < Body
  def initialize(name, mass, month, planet)
    super(name, mass)
    @month = month # Number of days it takes the moon to orbit its planet
    @planet = planet

  end
end

sun = Star.new(sun, 200, 'g')
earth = Planet.new(earth, 80, 24, 365)
moon_earth = Moon.new('moon', 30, 30, earth)



if body.name == :name
  return "planet alreadty exists"
