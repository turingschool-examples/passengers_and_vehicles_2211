require './lib/passenger'
require './lib/vehicle'
require './lib/park'

describe Park do

	let(:charlie) {Passenger.new({"name" => "Charlie", "age" => 18})}
  let(:jude) {Passenger.new({"name" => "Jude", "age" => 20})}
  let(:taylor) {Passenger.new({"name" => "Taylor", "age" => 12})}
	let(:rudy) {Passenger.new({"name" => "Rudy", "age" => 32})}
  let(:tonya) {Passenger.new({"name" => "Tonya", "age" => 17})}
  let(:vehicle) {Vehicle.new("2001", "Honda", "Civic")}
	let(:park) {Park.new({name: "Olympic National Park", admission_price: 10})}

	describe 'initialize' do

		it 'exists and has attributes' do

      expect(park).to be_a(Park)
      expect(park.name).to eq("Olympic National Park")
      expect(park.admission_price).to eq(10)
		end

		it 'can list all vehicles that enter the park' do

			expect(park.vehicles_entered).to eq([])

			vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)
			
			park.admit_vehicle(vehicle)

			expect(park.vehicles_entered).to eq([vehicle])
		end

		it 'can #generate_revenue per adult' do

			vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)

			park.admit_vehicle(vehicle)

			expect(park.generate_revenue).to eq(20)

			vehicle_two = Vehicle.new("2003", "Toyota", "4Runner")
			vehicle_two.add_passenger(rudy)
      vehicle_two.add_passenger(tonya)

			park.admit_vehicle(vehicle_two)

			expect(park.generate_revenue).to eq(30)
		end

	end
	
	describe 'Iteration 4' do

		let(:vehicle_two) {Vehicle.new("2003", "Toyota", "4Runner")}

		it 'can list names of all attendees alphabetically' do

			vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)
			vehicle_two.add_passenger(rudy)
      vehicle_two.add_passenger(tonya)

			park.admit_vehicle(vehicle)
			park.admit_vehicle(vehicle_two)

			expect(park.list_all_attendees_by_name).to eq(["Charlie", "Jude", "Rudy", "Taylor", "Tonya"])
		end


	end

end