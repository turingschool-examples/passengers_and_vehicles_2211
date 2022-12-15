require './lib/passenger'
require './lib/vehicle'

RSpec.describe Vehicle do
  let(:vehicle) { Vehicle.new("2001", "Honda", "Civic") }

  describe 'Iteration 2' do
    it "exists" do
      expect(vehicle).to be_an_instance_of(Vehicle)
    end

    it "can give vehicle details" do
      expect(vehicle.year).to eq("2001")
      expect(vehicle.make).to eq("Honda")
      expect(vehicle.model).to eq("Civic")
    end

  end

end