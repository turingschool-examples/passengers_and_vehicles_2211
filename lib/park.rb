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

  def revenue_generated 
    calculate_revenue
    format_revenue
  end

  def calculate_revenue 
     revenue = @vehicles.sum do |vehicle|
      (vehicle.num_adults * @admission_price).round(2)
    end.to_s
  end

  def format_revenue 
    format = sprintf("%.2f", calculate_revenue)
    format.reverse.concat("$").reverse
  end

end