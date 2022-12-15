class Vehicle
  attr_reader :year, :make, :model, :passengers

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @speeding = false
    @passengers = []
    @num_adults = 0
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
    require 'pry'; binding.pry
    @passengers.map do |passenger|
      if passengers[passenger].adult? == true
        num_adults += 0
      end
    end
  end
end