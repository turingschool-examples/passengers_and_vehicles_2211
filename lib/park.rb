class Park
  attr_reader :name, 
              :price,
              :vehicles

  def initialize(name, price)
    @name = name
    @price = price
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def list_all_passengers
    @vehicles.map do |vehicle|
      vehicle.passengers.select do |passenger|
        passenger
      end
    end.flatten
  end
end