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
end