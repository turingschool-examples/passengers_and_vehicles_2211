class Park
  attr_reader :name, :admission_price, :vehicles

  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
  end

  def enter_vehicle(vehicle)
    @vehicles << vehicle
  end

  def list_all_passengers
    @vehicles.map { |vehicle| vehicle.passengers }.flatten
  end

  def calculate_revenue
    list_all_passengers.find_all { |passenger| passenger.adult? }.length * @admission_price
  end






end