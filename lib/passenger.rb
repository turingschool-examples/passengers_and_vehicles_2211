class Passenger 
  attr_reader :name, :age

  def initialize(attributes)
    @name = attributes["name"]
    @age = attributes["age"]
    @is_driver = false
  end

  def adult? 
    @age >= 18
  end

  def driver? 
    @is_driver
  end

  def drive 
    @is_driver = true
  end

end