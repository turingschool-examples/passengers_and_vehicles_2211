require './lib/passenger'
require './lib/vehicle'

RSpec.describe Vehicle do
  let(:vehicle) { Vehicle.new("2001", "Honda", "Civic") }
  let(:charlie) { Passenger.new({"name" => "Charlie", "age" => 18}) }
  let(:taylor) { Passenger.new({"name" => "Taylor", "age" => 12}) }
  let(:jude) { Passenger.new({"name" => "Jude", "age" => 20}) }


  describe 'Iteration 2' do
    it "exists" do
      expect(vehicle).to be_an_instance_of(Vehicle)
    end

    it "can give vehicle details" do
      expect(vehicle.year).to eq("2001")
      expect(vehicle.make).to eq("Honda")
      expect(vehicle.model).to eq("Civic")
    end

    it "can tell when a vehicle is speeding" do
      expect(vehicle.speeding?).to be false

      vehicle.speed

      expect(vehicle.speeding?).to be true
    end

    it "starts with an empty passengers array" do
      expect(vehicle.passengers).to eq([])
    end

    it "can add passengers" do
      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)

      expect(vehicle.passengers).to eq([charlie, jude, taylor])
    end

  end

end