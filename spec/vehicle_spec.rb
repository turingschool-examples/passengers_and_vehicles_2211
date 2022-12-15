require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do
  vehicle = Vehicle.new("2001", "Honda", "Civic")    
  it 'exists' do

    expect(vehicle).to be_an_instance_of(Vehicle)
  end

  it 'has attributes' do
    vehicle = Vehicle.new("2001", "Honda", "Civic")    

    expect(vehicle.year).to eq("2001")
    expect(vehicle.make).to eq("Honda")
    expect(vehicle.model).to eq("Civic")
  end

  it 'starts not speeding' do
  vehicle = Vehicle.new("2001", "Honda", "Civic")    

    expect(vehicle.speeding?).to eq(false)
  end

  it 'can speed' do
    vehicle = Vehicle.new("2001", "Honda", "Civic")    
    vehicle.speed

    expect(vehicle.speeding?).to eq(true)
  end
end