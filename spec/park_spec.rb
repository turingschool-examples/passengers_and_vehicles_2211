require './lib/vehicle'
require './lib/passenger'
require './lib/park'

RSpec.describe do 
  let(:park) { Park.new("Rocky Mountain National Park", 20) }
  let(:vehicle1) { Vehicle.new("2001", "Honda", "Civic") }
	let(:vehicle2) {Vehicle.new("2012", "Volkswagon", "Jetta")}
	let(:charlie) { Passenger.new({"name" => "Charlie", "age" => 18}) }
	let(:taylor) { Passenger.new({"name" => "Taylor", "age" => 12}) }
	let(:jude) { Passenger.new({"name" => "Jude", "age" => 20}) }
	let(:layla) { Passenger.new({"name" => "Layla", "age" => 9}) }
	let(:connie) { Passenger.new({"name" => "Connie", "age" => 63}) }
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
		park.add_vehicle(vehicle2)
		expect(park.vehicles_in_park).to eq([vehicle1, vehicle2])
	end

	it "can list all passengers in park" do 
		vehicle1.add_passenger(jude)
		vehicle1.add_passenger(charlie)
		vehicle1.add_passenger(taylor)
		vehicle2.add_passenger(connie)
		park.add_vehicle(vehicle1)
		park.add_vehicle(vehicle2)
	
		expect(park.vehicles_in_park).to eq([vehicle1, vehicle2])
		expect(park.passengers_in_park).to eq([jude, charlie, taylor, connie])
	end

	it "can calculate revenue" do 
		vehicle1.add_passenger(jude)
		vehicle1.add_passenger(charlie)
		vehicle1.add_passenger(taylor)
		vehicle2.add_passenger(connie)

		park.add_vehicle(vehicle1)
		park.add_vehicle(vehicle2)

		expect(park.calculate_revenue).to eq(60)
	end

	it "lists all attendees" do 
		vehicle1.add_passenger(jude)
		vehicle1.add_passenger(charlie)
		vehicle1.add_passenger(taylor)
		vehicle2.add_passenger(connie)

		park.add_vehicle(vehicle1)
		park.add_vehicle(vehicle2)

		expect(park.list_of_attendees).to eq(["Charlie", "Connie", "Jude", "Taylor"])
	end

	it "lists minor attendees" do 
		vehicle1.add_passenger(jude)
		vehicle1.add_passenger(charlie)
		vehicle1.add_passenger(taylor)
		vehicle1.add_passenger(layla)

		park.add_vehicle(vehicle1)

		expect(park.list_of_minors(vehicle1)).to eq(["Layla", "Taylor"])
	end

	it "lists adult attendees" do 
		vehicle1.add_passenger(jude)
		vehicle1.add_passenger(charlie)
		vehicle1.add_passenger(taylor)
		vehicle1.add_passenger(layla)

		park.add_vehicle(vehicle1)

		expect(park.list_of_adults(vehicle1)).to eq(["Charlie", "Jude"])
	end
end