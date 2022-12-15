class Park
  attr_reader :name,
              :admission_price,
              :vehicles

  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def all_passengers
    passenger_arrays = []
    @vehicles.each do |vehicle|
      passenger_arrays << vehicle.passengers
    end
    passenger_arrays.flatten
  end

  def revenue
    all_passengers.count * @admission_price
  end

  def abc_passenger_list
    all_passengers.map do |passenger|
      passenger.name
    end.sort
  end

  def minors_adults
    ordered_list = {
                    minors: [],
                    adults: []
                  }
    all_passengers.each do |passenger|
      if passenger.adult?
        ordered_list[:adults] << passenger
      elsif !passenger.adult?
        ordered_list[:minors] << passenger
      end
    end
   ordered_list[:minors]= ordered_list[:minors].sort_by{|passenger| passenger.name}
   ordered_list[:adults]= ordered_list[:adults].sort_by{|passenger| passenger.name}
   ordered_list
  end

  def minors_list
    minors_adults[:minors]
  end

  def adults_list
    minors_adults[:adults]
  end
end