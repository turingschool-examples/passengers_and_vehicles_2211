require './lib/passenger'
require './lib/vehicle'
require './lib/park'

RSpec.describe Park do
  let(:park) { Park.new("Yosemite", 20) }
  let(:vehicle) { Vehicle.new("2001", "Honda", "Civic") }
  let(:charlie) { Passenger.new({"name" => "Charlie", "age" => 18}) }
  let(:taylor) { Passenger.new({"name" => "Taylor", "age" => 12}) }
  let(:jude) { Passenger.new({"name" => "Jude", "age" => 20}) }

  describe 'Iteration 3' do
    it "exists" do
      expect(park).to be_an_instance_of(Park)
    end

    it "has attributes" do
      expect(park.name).to eq("Yosemite")
      expect(park.admission).to eq(20)
      expect(park.vehicles).to eq([])
    end
    
  end
end