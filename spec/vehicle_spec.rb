require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do
    before(:each) do
        @vehicle = Vehicle.new("2001", "Honda", "Civic")
    end

    it "exists" do 
        expect(@vehicle).to be_an_instance_of(Vehicle)
    end

    it "has attributes" do
        expect(@vehicle.year).to eq("2001")
        expect(@vehicle.make).to eq("Honda")
        expect(@vehicle.model).to eq("Civic")
    end

    it "can speed" do
        expect(@vehicle.speeding?).to eq(false)
        @vehicle.speeding
        expect(@vehicle.speeding?).to eq(true)
    end

    it "doesnt have passengers" do
        expect(@vehicle.passenger).to eq([])
    end

    it "can have passengers" do 
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        jude = Passenger.new({"name" => "Jude", "age" => 20})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})

        @vehicle.add_passenger(charlie)
        @vehicle.add_passenger(jude)
        @vehicle.add_passenger(taylor)
    end
end