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

	it "has a make" do 
		expect(vehicle.make).to eq("Honda")
	end

	it "has a model" do 
		expect(vehicle.model).to eq("Civic")
	end

end