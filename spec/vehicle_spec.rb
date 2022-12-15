require './lib/passenger'
require './lib/vehicle'

describe Vehicle do

  let(:charlie) {Passenger.new({"name" => "Charlie", "age" => 18})}
  let(:jude) {Passenger.new({"name" => "Jude", "age" => 20})}
  let(:taylor) {Passenger.new({"name" => "Taylor", "age" => 12})}
  let(:vehicle) {Vehicle.new("2001", "Honda", "Civic")}

  describe 'initialize' do

    it 'exists and has attributes' do

      expect(vehicle).to be_a(Vehicle)
      expect(vehicle.year).to eq("2001")
      expect(vehicle.make).to eq("Honda")
      expect(vehicle.model).to eq("Civic")
    end

	end
	
end