class Park
  attr_reader :name, 
              :price,
              :vehicles,
              :revenue

  def initialize(name, price)
    @name = name
    @price = price
    @vehicles = []
    @revenue = 0
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

  def calculate_revenue
    list_all_passengers.select do |passenger|
      if passenger.adult? == true
      @revenue += 30
      end
    end
    @revenue
  end

  def list_vistors_by_name
    list_all_passengers.map do |passenger|
      passenger.name
    end
  end

  def list_of_adults
    adult_names = []
    list_all_passengers.each do |passenger|
      if passenger.adult? == true
        adult_names << passenger.name
      end
      adult_names
    end
  end

end