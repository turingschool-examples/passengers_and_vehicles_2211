require './lib/passenger'
require './lib/vehicle'

RSpec.describe Passenger do
  let(:vehicle) { Vehicle.new("2001", "Honda", "Civic") }
  let(:charlie) { Passenger.new({ name: "Charlie", age: 18}) }
  let(:jude) { Passenger.new({ name: "Jude", age: 20}) } 
  let(:taylor) { Passenger.new({ name: "Taylor", age: 12}) } 

  describe '#initialize' do
    it 'exists and has attributes' do
      expect(vehicle).to be_a(Vehicle)
      expect(vehicle.year).to eq("2001")
      expect(vehicle.make).to eq("Honda")
      expect(vehicle.model).to eq("Civic")
    end
  end

  describe '#speeding?' do
    it 'it is not speeding by default and can speed' do
      expect(vehicle.speeding?).to be false
      
      vehicle.speed

      expect(vehicle.speeding?).to be true
    end  
  end

  describe '#passengers' do
    it 'has no passengers by default' do
      expect(vehicle.passengers).to eq([])
    end  

    it 'can add passengers' do
      vehicle.add_passenger(charlie) 
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)

      expect(vehicle.passengers.count).to eq(3)
    end  
  end

  describe '#num_adults' do
    it 'count the adult passengers' do
      vehicle.add_passenger(charlie) 
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)

      expect(vehicle.num_adults.count).to eq(2)
    end  
  end
end  