require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do 
  let(:vehicle) { Vehicle.new("2001", "Honda", "Civic") }
	let(:charlie) { Passenger.new({"name" => "Charlie", "age" => 18}) }
	let(:taylor) { Passenger.new({"name" => "Taylor", "age" => 12}) }
	let(:jude) { Passenger.new({"name" => "Jude", "age" => 20}) }

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

	it "is not speeding by default" do 
		expect(vehicle.speeding?).to eq(false)
	end

	it "can speed" do 
		expect(vehicle.speeding?).to eq(false)
		vehicle.speed
		expect(vehicle.speeding?).to eq(true)
	end

	it "has no passengers by default" do 
		expect(vehicle.passengers).to eq([])
	end

	it "can add passengers" do 
		vehicle.add_passenger(charlie)
		vehicle.add_passenger(jude)
		vehicle.add_passenger(taylor)

		expect(vehicle.passengers).to eq([charlie, jude, taylor])
	end

end