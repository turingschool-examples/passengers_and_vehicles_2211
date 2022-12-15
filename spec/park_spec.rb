require './lib/passenger'
require './lib/vehicle'
require './lib/park'

RSpec.describe Park do
let(:park) {Park.new("Yellowstone")}
let(:vehicle) {Vehicle.new("2001", "Honda", "Civic")} 

    it 'exists' do
        expect(park).to be_an_instance_of(Park)
    end

    it 'has a name' do
        expect(park.name).to eq("Yellowstone")
    end
end