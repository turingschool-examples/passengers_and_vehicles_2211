class Park
      attr_reader :name, 
                  :price, 
                  :vehicles_in_park

  def initialize(name, price)
    @name = name
    @price = price
    @vehicles_in_park = []
  end

  def admit_vehicle(vehicle)
    @vehicles_in_park << vehicle
  end

  def patrons_in_park
    patrons = []
    @vehicles_in_park.each do |vehicle|
     patrons << vehicle.passengers
    end
    patrons = patrons.flatten
    return patrons
  end

  def patrons_by_name 
    named_patrons = []
    patrons_in_park.each do |object|
      named_patrons << object.name
    end
    return named_patrons
  end

  def revenue_generated
    chargable_patrons = patrons_in_park.select do |patron|
      patron.adult?
    end
    revenue = (chargable_patrons.count * self.price)
    return revenue
  end

end