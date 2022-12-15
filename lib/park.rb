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

  def alphabetic_patrons_in_park 
    patrons_by_name.sort
  end

  def minors_in_park 
    minors = patrons_in_park.select do |patron|
      patron.adult? == false 
    end
    alphabetized_minors = minors.sort_by do |minor|
      minor.name 
    end
    minors_by_name = alphabetized_minors.map do |minor|
      minor.name 
    end
    return minors_by_name
  end

  def adults_in_park 
    adults = patrons_in_park.select do |patron|
      patron.adult? == true 
    end
    alphabetized_adults = adults.sort_by do |adult|
      adult.name 
    end
    adults_by_name = alphabetized_adults.map do |adult|
      adult.name 
    end
    return adults_by_name
  end

  def full_functionality
    hash_of_everyone = {}
    hash_of_everyone["Everyone"] = alphabetic_patrons_in_park 
    hash_of_everyone["Minors"] = minors_in_park
    hash_of_everyone["Adults"] = adults_in_park 

    return hash_of_everyone
  end

end