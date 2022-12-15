class Park
  attr_reader :name,
              :admission,
              :vehicles

  def initialize(name, admission)
    @name = name
    @admission = admission
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def list_all_passengers
    @vehicles.map do |vehicle|
      vehicle.passengers
    end.flatten
  end
  

end