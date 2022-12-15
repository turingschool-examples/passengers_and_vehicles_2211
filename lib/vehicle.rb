class Vehicle
  attr_reader :year,
              :make,
              :model,
              :passengers

  def initialize(year, make, model)
    @year      = year
    @make      = make
    @model     = model
    @speed     = false
    @passengers = []
  end

  def speed
    @speed = true
  end

  def speeding?
    @speed
  end

  def add_passenger(name)
    @passengers << name
  end

  def num_adults
    @passengers.find_all do |passenger|
      passenger.age > 17
    end 
  end
end