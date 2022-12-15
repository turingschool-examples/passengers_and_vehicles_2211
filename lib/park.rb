class Park
  attr_reader :name,
              :admission_price,
              :vehicles

  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def all_passengers
    passenger_arrays = []
    @vehicles.each do |vehicle|
      passenger_arrays << vehicle.passengers
    end
    passenger_arrays.flatten
  end

  def revenue
    all_passengers.count * @admission_price
  end
end