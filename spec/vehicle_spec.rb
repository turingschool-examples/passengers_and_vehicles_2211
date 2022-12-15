require 'rspec'
require './lib/passenger'
require './lib/vehicle'

RSpec.describe Vehicle do
    let(:vehicle) { Vehicle.new("2001", "Honda", "Civic") }

    let(:charlie) { Passenger.new({"name" => "Charlie", "age" => 18}) }  
    let(:jude) { Passenger.new({"name" => "Jude", "age" => 20}) }  
    let(:taylor) { Passenger.new({"name" => "Taylor", "age" => 12}) }


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

    it "can determine how many passengers are in a vehicle" do
        expect(vehicle.passengers).to eq([])
    end

    it "can add passengers to a vehicle" do
        vehicle.add_passenger(charlie)  
        vehicle.add_passenger(jude) 
        vehicle.add_passenger(taylor) 

        expect(vehicle.passengers).to eq([charlie, jude, taylor])
    end




end