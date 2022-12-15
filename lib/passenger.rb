class Passenger
  attr_reader :details
  
  def initialize(details)
    @details = details
  end

  def name
    @details['name']
  end

  def age
    @detals['age']
  end
end