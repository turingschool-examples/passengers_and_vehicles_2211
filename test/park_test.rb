require './lib/park'

RSpec.describe Park do
  let(:park) {Park.new('Olympic National Park', 11.50) }
  let(:vehicle) { Vehicle.new('2001', 'Honda', 'Civic') } 
  let(:taylor) { Passenger.new({'name' => 'Taylor', 'age' => 12}) }
  let(:charlie) { Passenger.new({"name" => "Charlie", "age" => 18}) }  
  let(:jude) {Passenger.new({"name" => "Jude", "age" => 20}) }

  context 'Iteration 3' do
    it '1. exists' do
      expect(park).to be_a(Park)
    end
  end
end