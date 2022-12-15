class Passenger
  attr_reader :name,
              :age

  def initialize(person)
    @name = person["name"]
    @age = person["age"]
  end

  def adult?
    @age >= 18
  end
end