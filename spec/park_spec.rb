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

    it 'can list vehicles in the park' do
        expect(park.vehicles_in_park).to eq([])
    end

    it 'can add vehicles to park' do
        park.enter_park(vehicle)
        expect(park.vehicles_in_park).to eq([vehicle])
    end
end