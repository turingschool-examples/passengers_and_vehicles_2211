class NationalPark
  attr_reader :name,
              :admission_cost,
              :vehicles
  
  def initialize(name, cost)
    @name = name
    @admission_cost = cost
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def passengers
    passengers = []
    @vehicles.each do |vehicle|
      passengers << vehicle.passengers 
    end
    passengers.flatten
  end

  def revenue
    adults = @vehicles.map { |vehicle| vehicle.num_adults} 
    revenue = adults.sum * @admission_cost
    "$#{revenue}"
  end

  def attendees
   names = passengers.map { |passenger| passenger.name}
   names.sort { |a,b| a <=> b}
  end
end