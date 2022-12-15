class Passenger
  attr_reader :name, 
              :age

  def initialize(details)
    @name = details["name"]
    @age = details["age"]
    @driver = false
  end

  def adult?
    if @age >= 18
      true
    else
      false
    end
  end

  def driver?
    @driver
  end

  def drive
    @driver = true
  end
end