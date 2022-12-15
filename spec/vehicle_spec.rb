require './lib/passenger'
require './lib/vehicle'

describe Vehicle do
  let (:vehicle) {Vehicle.new('2001', 'Honda', 'Civic')}
  
  it 'exists' do
    expect(vehicle).to be_a(Vehicle)
  end

  it 'has attributes' do
    expect(vehicle.year).to eq('2001')
    expect(vehicle.make).to eq('Honda')
    expect(vehicle.model).to eq('Civic')
  end

  it 'is not speeding by default' do
    expect(vehicle.speeding?).to be false
  end

  it 'is speeding when it speeds' do
    vehicle.speed

    expect(vehicle.speeding?).to be true 
  end
end