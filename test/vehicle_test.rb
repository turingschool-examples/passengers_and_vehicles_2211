require './test/test_helper.rb'

RSpec.describe Passenger do
  let(:vehicle) { Vehicle.new('2001', 'Honda', 'Civic') } 
  let(:taylor) { Passenger.new({'name' => 'Taylor', 'age' => 12}) }
  let(:charlie) { Passenger.new({"name" => "Charlie", "age" => 18}) }  
  let(:jude) {Passenger.new({"name" => "Jude", "age" => 20}) }
  
  context 'Iteration 2' do
    it '1. exists' do
      expect(vehicle).to be_a(Vehicle)
    end
    
    it '2. can check object for year, make, and model' do
      expect(vehicle.year).to eq('2001')
      expect(vehicle.make).to eq('Honda')
      expect(vehicle.model).to eq('Civic')
    end

    it '3. can be checked for speeding' do
      expect(vehicle.speeding?).to eq(false)

      vehicle.speed

      expect(vehicle.speeding?).to eq(true)
    end

    it '4. can have passengers' do
      expect(vehicle.passengers).to eq([])

      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)   
      vehicle.add_passenger(taylor)

      expect(vehicle.passengers).to eq([charlie, jude, taylor])
    end



  end
end
 