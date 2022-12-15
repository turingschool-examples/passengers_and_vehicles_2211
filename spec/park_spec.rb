require 'rspec'
require './lib/passenger'
require './lib/vehicle'
require './lib/park'

RSpec.describe Park do 
    before(:each) do
        @park = Park.new("Sand Dunes", 25)
        @vehicle = Vehicle.new("2001", "Honda", "Civic")
    end

    it "it exists" do 
        expect(@park).to be_an_instance_of(Park)
    end

    it "name and admission" do
        expect(@park.name).to eq("Sand Dunes")
        expect(@park.admission).to eq(25)
    end

    it "guest_vehicles" do
        expect(@park.guest_vehicles).to eq([])
        @park.new_guest(@vehicle)
        expect(@park.guest_vehicles).to eq([@vehicle])
    end

    it "list_all_passengers" do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
        jude = Passenger.new({"name" => "Jude", "age" => 20})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})

        @vehicle.add_passenger(charlie)
        @vehicle.add_passenger(jude)
        @vehicle.add_passenger(taylor)

        @park.new_guest(@vehicle)

        expect(@park.list_all_passengers).to eq([charlie, jude, taylor])
    end

    xit "revenue" do
        expect(@park.revenue).to eq(0)

        charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
        jude = Passenger.new({"name" => "Jude", "age" => 20})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})

        @vehicle.add_passenger(charlie)
        @vehicle.add_passenger(jude)
        @vehicle.add_passenger(taylor)

        @park.new_guest(@vehicle)

        expect(@park.revenue).to eq(50)
    end
end
