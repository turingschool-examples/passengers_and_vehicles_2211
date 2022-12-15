require './lib/passenger'
require './lib/vehicle' 
require './lib/park'

RSpec.describe Park do 
  it 'exists and has attributes' do 
    park = Park.new("Zion National Park", 15.00)

    expect(park).to be_a(Park)
    expect(park.name).to eq("Zion National Park")
    expect(park.admission_price).to eq(15.00)
    expect(park.vehicles).to eq([])
  end

  describe '#add_vehicle' do 
    it 'can add vehicles to the park' do 
      park = Park.new("Zion National Park", 15.00) 

      vehicle_1 = Vehicle.new("2001", "Honda", "Civic") 
      vehicle_2 = Vehicle.new("2005", "Chevrolet", "Aveo") 

      expect(park.vehicles).to eq([])

      park.add_vehicle(vehicle_1)
      park.add_vehicle(vehicle_2)

      expect(park.vehicles).to eq([vehicle_1, vehicle_2])
    end
  end
end