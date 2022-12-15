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

  def revenue
    vehicles.sum do |vehicle|  
    (vehicle.num_adults * admission_price)
    end
  end

  def attendee_names
    list_passengers.map do |passenger|
      passenger.name
    end.sort
  end

  def names_attendee_minors
    list_passengers.map do |passenger|
      passenger.name if !passenger.adult?
    end.compact.sort
  end

  def names_attendee_adults
    list_passengers.map do |passenger|
      passenger.name if passenger.adult?
    end.compact.sort
  end 

  def attendee_minors
    minors = list_passengers.select do |passenger|
      !passenger.adult?
    end
    minors.sort_by do |minor|
    minor.name
    end
  end

  def attendee_adults
    adults = list_passengers.select do |passenger|
      passenger.adult?
    end
    adults.sort_by do |adult|
      adult.name
    end
  end
end