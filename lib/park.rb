class Park
  attr_reader :name, :admission_price, :vehicles
  
  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles.push(vehicle)
  end

  def list_passengers
    vehicles.map do |vehicle|
      vehicle.passengers.select do |passenger|
        passenger 
      end
    end.flatten
  end
end