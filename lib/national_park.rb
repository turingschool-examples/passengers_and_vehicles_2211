class NationalPark
  attr_reader :name, 
              :admission,
              :vehicles

  def initialize(name, admission)
        @name = name 
        @admission = admission
        @vehicles = []
  end

  def add_vehicle(vehicle)
    vehicles.push(vehicle)
  end

  # stopped here to try and figure out how to properly
  # add adult in vehicle.
end