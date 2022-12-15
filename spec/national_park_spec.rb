require 'rspec'
require './lib/passenger'
require './lib/vehicle'
require './lib/national_park'

RSpec.describe NationalPark do
    let(:park) {NationalPark.new("Carlsbad Caverns", 15)}
    let(:vehicle) { Vehicle.new("2001", "Honda", "Civic") }


    it "exists" do
        expect(park).to be_instance_of(NationalPark)
    end

    it "has attributes" do
        expect(park.name).to eq("Carlsbad Caverns")
        expect(park.admission_price).to eq(15)
    end

    it "can list all vehicles that enter the park" do
        expect(park.vehicles_in_park).to eq([])

        park.enter(vehicle)

        expect(park.vehicles_in_park).to eq([vehicle])
    end


end