require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do 
  let(:vehicle) { Vehicle.new("2001", "Honda", "Civic") }

	it "exists" do 
		expect(vehicle).to be_an_instance_of(Vehicle)
	end

	it "has a year" do 
		expect(vehicle.year).to eq("2001")
	end
end