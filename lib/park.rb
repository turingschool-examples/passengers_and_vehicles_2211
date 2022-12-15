require './lib/passenger'
require './lib/vehicle'

class Park
  attr_reader :name, :price, :vehciles_entered
  def initialize(name, price)
    @name = name
    @price = price
    @vehciles_entered = []
  end
end