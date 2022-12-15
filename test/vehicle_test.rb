require './test/test_helper.rb'

RSpec.describe Passenger do
  let(:vehicle) { Vehicle.new('2001', 'Honda', 'Civic') } 
  let(:taylor) { Passenger.new({'name' => 'Taylor', 'age' => 12}) }

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

      vechicle.speed
      
      expect(vehicle.speeding?).to eq(true)
    end




  end
end
 