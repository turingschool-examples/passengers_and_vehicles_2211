require './lib/vehicle'
require './lib/passenger'
require './lib/park'

RSpec.describe do 
  let(:park) { Park.new("Rocky Mountain National Park", 20) }
  let(:vehicle1) { Vehicle.new("2001", "Honda", "Civic") }
	let(:charlie) { Passenger.new({"name" => "Charlie", "age" => 18}) }
	let(:taylor) { Passenger.new({"name" => "Taylor", "age" => 12}) }
	let(:jude) { Passenger.new({"name" => "Jude", "age" => 20}) }

	it "exists" do 
		expect(park).to be_an_instance_of(Park)
	end

	it "has a name" do 
		expect(park.name).to eq("Rocky Mountain National Park")
	end

	it "has an addmission price" do 
		expect(park.admission_price).to eq(20)
	end

	it "has visitors" do 
		expect(park.vehicles_in_park).to eq([])
		park.add_vehicle(vehicle1)
		expect(park.vehicles_in_park).to eq([vehicle1])
	end

	it "can list all passengers in park" do 
		vehicle1.add_passenger(jude)
		vehicle1.add_passenger(charlie)
		vehicle1.add_passenger(taylor)

		park.add_vehicle(vehicle1)
	
		expect(park.vehicles_in_park).to eq([vehicle1])
		expect(park.passengers_in_park(vehicle1)).to eq(3)
	end

	it "can calculate revenue" do 
		vehicle1.add_passenger(jude)
		vehicle1.add_passenger(charlie)
		vehicle1.add_passenger(taylor)

		park.add_vehicle(vehicle1)

		expect(park.calculate_rev(vehicle1)).to eq(40)
	end

	it "lists attendees" do 
		vehicle1.add_passenger(jude)
		vehicle1.add_passenger(charlie)
		vehicle1.add_passenger(taylor)

		park.add_vehicle(vehicle1)

		expect(park.list_of_attendees(vehicle1)).to eq(["Charlie", "Jude", "Taylor"])
	end
end