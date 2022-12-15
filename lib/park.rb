class Park 
  attr_reader :name, :admission_price, :vehicles

  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def visitors 
    @vehicles.map do |vehicle| 
      vehicle.passengers.map do |passenger|
        passenger
      end
    end.flatten
  end

end