class NationalPark
  attr_reader :name,
              :price,
              :vehicles

  def initialize(name, price)
    @name     = name
    @price    = price
    @vehicles = []
  end

  def add_vehicles(vehicle)
    @vehicles << vehicle
  end

  def passenger_list
    @vehicles.select do |vehicle|
      vehicle.passengers
     require 'pry'; binding.pry
    end
  end
end