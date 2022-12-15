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

    @vehicles.each { |vehicle| passengers << vehicle.passengers }

    passengers.flatten
  end

  def calculate_revenue
    @fee * @vehicles.sum { |vehicle| vehicle.num_adults }
  end

  def list_all_names
    names = []

    list_passengers.each { |passenger| names << passenger.name }

    names.sort
  end
end