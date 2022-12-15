require 'rspec'
require './lib/passenger'
require './lib/vehicle'
require './lib/national_park'

RSpec.describe NationalPark do
    let(:park) {NationalPark.new("Carlsbad Caverns", 15)}

    let(:vehicle1) { Vehicle.new("2001", "Honda", "Civic") }
    let(:charlie) { Passenger.new({"name" => "Charlie", "age" => 18}) }  
    let(:jude) { Passenger.new({"name" => "Jude", "age" => 20}) }  
    let(:taylor) { Passenger.new({"name" => "Taylor", "age" => 12}) }

    let(:vehicle2) { Vehicle.new("2018", "Subaru", "Outback") }
    let(:mason) { Passenger.new({"name" => "Mason", "age" => 6}) }  
    let(:victoria) { Passenger.new({"name" => "Victoria", "age" => 39}) }
    
    it "exists" do
        expect(park).to be_instance_of(NationalPark)
    end

    it "has attributes" do
        expect(park.name).to eq("Carlsbad Caverns")
        expect(park.admission_price).to eq(15)
    end

    it "can list all vehicles that enter the park" do
        expect(park.vehicles_in_park).to eq([])

        park.enter(vehicle1)

        expect(park.vehicles_in_park).to eq([vehicle1])
    end

    it "can list all the passengers that enter the park" do
        vehicle1.add_passenger(charlie)  
        vehicle1.add_passenger(jude) 
        vehicle1.add_passenger(taylor) 

        vehicle2.add_passenger(mason) 
        vehicle2.add_passenger(victoria) 
        
        park.enter(vehicle1)
        park.enter(vehicle2)

        expect(park.passengers_in_park).to eq([charlie, jude, taylor, mason, victoria])
    end

    it "can calculate revenue generated of the park" do
        vehicle1.add_passenger(charlie)  
        vehicle1.add_passenger(jude) 
        vehicle1.add_passenger(taylor) 

        vehicle2.add_passenger(mason) 
        vehicle2.add_passenger(victoria) 
        
        park.enter(vehicle1)
        park.enter(vehicle2)

        park.charge_adults_nested_arrays

        expect(park.revenue).to eq(45)
    end

    
end