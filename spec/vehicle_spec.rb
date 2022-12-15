require 'rspec'
require './lib/passenger'
require './lib/vehicle'

RSpec.describe Vehicle do 
    before(:each) do
        @vehicle = Vehicle.new("2001", "Honda", "Civic")
    end

    it "it exists" do 
        expect(@vehicle).to be_an_instance_of(Vehicle)
    end

    it "year, make, and model" do
        expect(@vehicle.year).to eq(2001)
        expect(@vehicle.make).to eq("Honda")
        expect(@vehicle.model).to eq("Civic")
    end

    it "speed and speeding?" do
        expect(@vehicle.speeding?).to eq(false)
        @vehicle.speed
        expect(@vehicle.speeding?).to eq(true)
    end

    xit "passengers" do
        expect(@vehicle.passengers).to eq([])

        charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
        jude = Passenger.new({"name" => "Jude", "age" => 20})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})

        @vehicle.add_passenger(charlie)
        @vehicle.add_passenger(jude)
        @vehicle.add_passenger(taylor)

        # expect(@vehicle.passengers).to eq([]) names instead?
    end

    xit "num_adults" do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
        jude = Passenger.new({"name" => "Jude", "age" => 20})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})

        @vehicle.add_passenger(charlie)
        @vehicle.add_passenger(jude)
        @vehicle.add_passenger(taylor)

        expect(@vehicle.num_adults).to eq(2)
    end
end