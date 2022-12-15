require './lib/passenger'
require './lib/vehicle'

RSpec.describe Vehicle do 
  it 'exists and has attributes' do 
    vehicle = Vehicle.new("2001", "Honda", "Civic") 
    
    expect(vehicle.year).to eq("2001")
    expect(vehicle.make).to eq("Honda")
    expect(vehicle.model).to eq("Civic")
  end

  describe '#speeding?' do 
    it 'is not speeding by default but can speed' do 
      vehicle = Vehicle.new("2001", "Honda", "Civic")  

      expect(vehicle.speeding?).to eq(false)

      vehicle.speed

      expect(vehicle.speeding?).to eq(true)
    end
  end
end