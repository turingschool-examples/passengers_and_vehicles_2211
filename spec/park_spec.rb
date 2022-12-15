require './lib/passenger'
require './lib/vehicle'
require './lib/park'

describe Park do

	let(:charlie) {Passenger.new({"name" => "Charlie", "age" => 18})}
  let(:jude) {Passenger.new({"name" => "Jude", "age" => 20})}
  let(:taylor) {Passenger.new({"name" => "Taylor", "age" => 12})}
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
			
			park.admit_vehicle(vehicle)

			expect(park.vehicles_entered).to eq([vehicle])
		end


	end

end