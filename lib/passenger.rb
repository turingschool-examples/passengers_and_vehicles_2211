class Passenger
  attr_reader :name,
              :age

  def initialize(person)
    @name = person["name"]
    @age = person["age"]
    @driver = false
  end

  def adult?
    @age >= 18
  end

  def driver?
    @driver
  end

  def drive
    @driver = true if adult?
  end
end