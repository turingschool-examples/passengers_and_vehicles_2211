class Passenger
  attr_reader :name,
              :age

  def initialize(person)
    @name = person["name"]
    @age = person["age"]
  end
end