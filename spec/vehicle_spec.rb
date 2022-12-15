require './lib/passenger'
require './lib/vehicle'

describe Vehicle do
  let(:vehicle) {Vehicle.new('2001', 'Honda', 'Civic')}
  let(:charlie) {Passenger.new({'name' => 'Charlie', 'age' => 18})}
  let(:taylor) {Passenger.new({'name' => 'Taylor', 'age' => 12})}
  let(:jude) {Passenger.new({'name' => 'Jude', 'age' => 20})}
  
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

  it 'has no passengers by default' do
    expect(vehicle.passengers).to eq([])
  end

  it 'can add passengers' do
    vehicle.add_passenger(charlie)
    vehicle.add_passenger(jude)
    vehicle.add_passenger(taylor)

    expect(vehicle.passengers).to eq([charlie, jude, taylor])
  end

  it 'can count the number of adults' do
    vehicle.add_passenger(charlie)
    vehicle.add_passenger(jude)
    vehicle.add_passenger(taylor)

    expect(vehicle.num_adults).to eq(2)
  end
end