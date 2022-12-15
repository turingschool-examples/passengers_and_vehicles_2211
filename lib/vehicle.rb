class Vehicle

  attr :year,
       :make,
       :model,
       :passengers

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @passengers = []
  end

  def speeding?
    if @speed == true
    true
    else
    false
    end
  end

  def speed
    @speed = true
  end

  def add_passenger(passenger)
    @passengers << @passenger
  end

  def num_adults
    count = 0
    if @passengers[age] > 17
        count += 1
    end
  end

end