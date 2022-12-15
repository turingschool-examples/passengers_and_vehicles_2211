class Passenger
  attr_reader :details
  
  def initialize(details)
    @details = details
    @adult = adult
  end

  def name
    @details['name']
  end

  def age
    @details['age']
  end
end