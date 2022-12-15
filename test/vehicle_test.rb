require './test/test_helper.rb'

RSpec.describe Passenger do
  let(:vehicle) { Vehicle.new("2001", "Honda", "Civic") } 
  let(:taylor) { Passenger.new({'name' => 'Taylor', 'age' => 12}) }

  context 'Iteration 2' do
    it '1. exists' do
      expect(vehicle).to be_a(Vehicle)
    end
  end
end
 