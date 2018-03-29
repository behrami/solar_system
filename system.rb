class System

  def initialize
    @bodies=[]
  end

  def add(cele_name, mass)
    cele = {:cele_name => cele_name, :mass => mass}
    @bodies.push(cele)

  end

  def total_mass

    temp_mass =0

    @bodies.each do |cele_hash|
      temp_mass += cele_hash[:mass]
    end

    return temp_mass

  end

end

class Body

  def initialize(name, mass)
    @name=name
    @mass=mass
  end
end

class Planet < Body

  def initialize(name,mass, day, year)
    super(name,mass)
    @day=day#24 hrs
    @year=year#365 days
  end

end

class Star< Body

  def initialize(name,mass,type)
    super(name,mass)
    @type=type
  end
end

class Moon< Body

  def initialize(name,mass,month,planet)
    super(name,mass)
    @month=month
    @planet= planet
  end
end

###################################3

solar_system = System.new
p solar_system.add("mercy",10)
p solar_system.add("venus",15)
p solar_system.add("earth",20)

p solar_system.total_mass


planet_earth= Planet.new("earth",1000, 24, 365)
p planet_earth
puts

moon_earth= Moon.new("earth_moon", 500, 30, planet_earth)
p moon_earth
