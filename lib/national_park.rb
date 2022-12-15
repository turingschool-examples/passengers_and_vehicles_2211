class NationalPark
  attr_reader :name,
              :fee,
              :vehicles

  def initialize(name, fee)
    @name = name
    @fee = fee
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def list_passengers
    passengers = []

    @vehicles.each do |vehicle|
      passengers << vehicle.passengers
    end

    passengers.flatten
  end
end