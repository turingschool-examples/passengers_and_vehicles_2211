require './lib/passenger'
require './lib/vehicle'

RSpec.describe Vehicle do 
  it 'will exist and have attributes' do 
    vehicle = Vehicle.new("2001", "Honda", "Civic")  

    expect(vehicle.year).to eq("2001")
    expect(vehicle.make).to eq("Honda")
    expect(vehicle.model).to eq("Civic")
  end

  it 'will check to see if vehicle was speeding' do 
    vehicle = Vehicle.new("2001", "Honda", "Civic") \

    expect(vehicle.speeding?).to eq(false)

    vehicle.speeding

    expect(vehicle.speeding?).to eq(true)
  end
end