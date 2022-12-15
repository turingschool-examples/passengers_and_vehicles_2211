require './lib/passenger'
require './lib/vehicle'

class Park
  attr_reader :name, :price, :vehciles_entered, :visitors
  def initialize(name, price)
    @name = name
    @price = price
    @vehciles_entered = []
    @visitors = []
  end

  def admit_vehicle(vehicle)
    @vehciles_entered << vehicle
    @visitors << vehicle.passengers
  end
end