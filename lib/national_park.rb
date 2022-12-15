class NationalPark
  attr_reader :name,
              :admission_cost,
              :vehicles
  
  def initialize(name, cost)
    @name = name
    @admission_cost = cost
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def passengers
    passengers = []
    @vehicles.each do |vehicle|
      passengers << vehicle.passengers 
    end
    passengers.flatten
  end

  
end