require './lib/passenger'
require './lib/vehicle'
require './lib/park'

describe Park do
  let(:park) {Park.new('Park Jasmine', 5)}
  let(:vehicle_1) {Vehicle.new('2001', 'Honda', 'Civic')}
  let(:vehicle_2) {Vehicle.new('2021', 'Nissan', 'Rogue')}
  let(:vehicle_3) {Vehicle.new('2019', 'Dodge', 'Ram')}

  it 'exists' do
    expect(park).to be_a(Park)
  end

  it 'has attributes' do
    expect(park.name).to eq('Park Jasmine')
    expect(park.admission_price).to eq(5)
  end

  it 'has no vehicles by default' do
    expect(park.vehicles).to eq ([])
  end
  
  it 'can add vehicles and list them' do
    park.add_vehicle(vehicle_1)
    park.add_vehicle(vehicle_2)
    park.add_vehicle(vehicle_3)

    expect(park.vehicles).to eq ([vehicle_1, vehicle_2, vehicle_3])
  end
end