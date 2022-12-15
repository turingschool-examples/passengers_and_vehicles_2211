require 'rspec'
require './lib/passenger'
require './lib/vehicle'

RSpec.describe Vehicle do
    let(:vehicle) { Vehicle.new("2001", "Honda", "Civic") }

    it "exists" do
        expect(vehicle).to be_instance_of(Vehicle)
    end

    it "has attributes" do
        expect(vehicle.year).to eq("2001")
        expect(vehicle.make).to eq("Honda")
        expect(vehicle.model).to eq("Civic")
    end

    it "can determine if a vehicle is speeding" do
        expect(vehicle.speeding?).to eq(false)

        vehicle.speed

        expect(vehicle.speeding?).to eq(true)
    end

end