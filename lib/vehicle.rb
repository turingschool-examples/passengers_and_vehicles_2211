class Vehicle
  attr_reader :year, 
              :make, 
              :model,
              :speeding
              :passengers
  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @speeding = false
    @passengers = []
  end

  def speeding?
    @speeding
  end

  def speed
    @speeding = true
  end

  def passengers
    @passengers
  end

  def add_passenger(passenger)
    @passengers.push(passenger)
  end

  def num_adults
    num_adults = []
    @passengers.find_all do |passenger|
      if passenger.adult?
        num_adults.push(passenger)
      end
    end
    num_adults.count
  end
  
end