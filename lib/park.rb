require './lib/passenger'
require './lib/vehicle'

class Park
  attr_reader :name, :price, :vehicles_entered, :visitors
  def initialize(name, price)
    @name = name
    @price = price
    @vehicles_entered = []
    @visitors = [].flatten
  end

  def admit_vehicle(vehicle)
    @vehicles_entered << vehicle
    @visitors += vehicle.passengers
    @visitors
  end
end