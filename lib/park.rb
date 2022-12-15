require './lib/passenger'
require './lib/vehicle'

class Park
  attr_reader :name, :price, :vehicles_entered, :visitors
  def initialize(name, price)
    @name = name
    @price = price
    @vehicles_entered = []
    @visitors = []
  end

  def admit_vehicle(vehicle)
    @vehicles_entered << vehicle
    @visitors += vehicle.passengers
  end

  def revenue
    @price * @visitors.count
  end

  def list_patrons_by_name
    names = []
    @visitors.each do |visitor|
      names << visitor.name
    end
    names.sort
  end

  def list_of_adults
    adults = @visitors.select { |visitor| visitor.age >= 18 }
    adults.sort_by(&:name)
  end

  def list_of_minors
    minors = @visitors.select { |visitor| visitor.age < 18 }
    minors.sort_by(&:name)
  end

end