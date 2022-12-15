class Park
attr_reader :name, :price, :vehicles, :revenue

  def initialize(name, price)
    @name = name
    @price = price
    @vehicles = []
    @revenue = 0
  end

  def add_vehicle(vehicle)
    @vehicles.push(vehicle)
  end

  def list_all_vehicles
    @vehicles
  end

  def list_all_passengers
    @vehicles.map do |vehicle|
      vehicle.passengers.select do |passenger|
        passenger
      end
    end.flatten
  end

  def charge_admission
    @vehicle.num_adults * @price
  end
end