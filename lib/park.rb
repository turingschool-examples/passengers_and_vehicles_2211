require './lib/passenger'
require './lib/vehicle'

class Park
  attr_reader :name, :price, :vehciles_entered
  def initialize(name, price)
    @name = name
    @price = price
    @vehciles_entered = []
  end

  def admit_vehicle(vehicle)
    @vehciles_entered << vehicle
  end
end