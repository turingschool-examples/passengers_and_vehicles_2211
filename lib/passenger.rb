class Passenger
  attr_reader :details, :adult
  
  def initialize(details)
    @details = details
    @adult = nil
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

end