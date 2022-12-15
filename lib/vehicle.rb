class Vehicle
  attr_reader :year, 
              :make,
              :model,
              :passengers,
              :num_adults

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @to_fast = false
    @passengers = []
    @num_adults = 0
  end

  def speeding?
    @to_fast
  end

  def speed
    @to_fast = true
  end

  def add_passenger(person)
    @passengers.push(person)
  end

  def add_adult
    @num_adults += 1
  end

# I know theres other ways to count the number of adults 
# but went with this just to at least have that done.
# If I dont have time to come back to this I would love to see
# How you would do it. 
end