require './lib/passenger'
require './lib/vehicle'
require './lib/park'

describe Park do

	let(:charlie) {Passenger.new({"name" => "Charlie", "age" => 18})}
  let(:jude) {Passenger.new({"name" => "Jude", "age" => 20})}
  let(:taylor) {Passenger.new({"name" => "Taylor", "age" => 12})}
  let(:vehicle) {Vehicle.new("2001", "Honda", "Civic")}
	let(:park) {Park.new({name: "Olympia National Park", admission_price: 10})}

	describe 'initialize' do

		it 'exists and has attributes' do

      expect(park).to be_a(Park)
      expect(park.name).to eq("Olympia National Park")
      expect(park.admission_price).to eq(10)
		end




	end

end