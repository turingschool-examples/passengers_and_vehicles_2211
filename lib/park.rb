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
    @visitors
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
end