require './lib/passenger'
require './lib/vehicle'
require 'rspec'
require 'pry'

RSpec.describe Vehicle do
  it 'is a Vehicle and has attributes' do
    vehicle = Vehicle.new("2001", "Honda", "Civic")

    expect(vehicle.year).to eq("2001")
    expect(vehicle.make).to eq("Honda")
    expect(vehicle.model).to eq("Civic")
  end

  it 'can check if the vehicle is speeding' do
    vehicle = Vehicle.new("2001", "Honda", "Civic")

    expect(vehicle.speeding?).to be false
    vehicle.speed
    expect(vehicle.speeding?).to be true
  end

  it 'can add passengers to the vehcile' do
    vehicle = Vehicle.new("2001", "Honda", "Civic")

    expect(vehicle.passengers).to eq([])

    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    vehicle.add_passenger(charlie)
    vehicle.add_passenger(jude)
    vehicle.add_passenger(taylor)
    
    expect(vehicle.passengers).to eq([charlie, jude, taylor])
  end
end