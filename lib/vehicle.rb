class Vehicle
  attr_reader :year, :make, :model, :passengers, :num_adults

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @speeding = false
    @passengers = []
    @num_adults = num_adults.count
  end

  def speeding?
    @speeding
  end

  def speed
    @speeding = true
  end

  def add_passenger(passenger)
    @passengers.push(passenger)
  end

  def num_adults
    @passengers.each do |passenger|
     if passenger.adult?
      require 'pry'; binding.pry
        @num_adults += 1
     else 
      @num_adults = 0
     end
    end
  end
end