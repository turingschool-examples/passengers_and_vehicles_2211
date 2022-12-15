class Passenger

  def initialize(details)
    @details = details
    @driver = false
  end

  def name 
    @details["name"]
  end

  def age 
    @details["age"]
  end

  def adult?
   @details["age"] >= 18 
  end

  def driver?
    @driver
  end

  def drive
    @driver = true
  end
end