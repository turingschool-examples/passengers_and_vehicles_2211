class Passenger
  attr_reader :details, :adult, :driver
  
  def initialize(details)
    @details = details
    @adult = nil
    @driver = false
  end

  def name
    @details['name']
  end

  def age
    @details['age']
  end

  def adult?
    if @details['age'] <= 17
      @adult = false
    else
      @adult = true
    end
  end

  def drive
    @driver = true
  end

  def driver?
    @driver
  end
end