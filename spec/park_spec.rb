require './lib/park'
require './lib/passenger'
require './lib/vehicle'
require 'rspec'
require 'pry'

RSpec.describe Park do
  it 'is a park and has attributes' do
    canyonlands = Park.new('Canyonlands', 20)
    
    expect(canyonlands.name).to eq('Canyonlands')
    expect(canyonlands.price).to eq(20)
  end

  it 'can have vehicles enter and return all that have' do
    canyonlands = Park.new('Canyonlands', 20)

    expect(canyonlands.vehciles_entered).to eq([])
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    canyonlands.admit_vehicle(vehicle)
    expect(canyonlands.vehciles_entered).to eq([vehicle])
  end

  it 'can list the passengers that have entered in vehicles' do
    canyonlands = Park.new('Canyonlands', 20)
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    vehicle.add_passenger(charlie)
    vehicle.add_passenger(jude)
    vehicle.add_passenger(taylor)
    canyonlands.admit_vehicle(vehicle)

    expect(canyonlands.visitors).to eq([charlie, june, taylor])
  end
end