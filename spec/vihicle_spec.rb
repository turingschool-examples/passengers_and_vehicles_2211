require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do
let(:vehicle) { Vehicle.new("2001", "Honda", "Civic") }
let(:charlie) { Passenger.new({ "name" => "Charlie", "age" => 18 })}
let(:jude) { Passenger.new({ "name" => "Jude", "age" => 20 })}
let(:taylor) { Passenger.new({ "name" => "Taylor", "age" => 12 })}

    it "exists" do
        expect(vehicle).to be_instance_of(Vehicle)
    end

    it "has_attributes" do
        expect(vehicle.year).to eq("2001")
        expect(vehicle.make).to eq("Honda")
        expect(vehicle.model).to eq("Civic")
    end

    it "not_speeding_by_default" do
        expect(vehicle.speeding?).to eq(false)
    end

    it "can_speed" do
        vehicle.speed
        expect(vehicle.speeding?).to eq(true)
    end

    it "start_with_no_passengers" do
        expect(vehicle.passengers).to eq([])
    end

    it "add_passengers" do
        vehicle.add_passengers(charlie)
        vehicle.add_passengers(jude)
        vehicle.add_passengers(taylor)

        expect(vehicle.passengers).to eq([charlie, jude, taylor])
    end

    it "number_of_adults" do
        vehicle.add_passengers(charlie)
        vehicle.add_passengers(jude)
        vehicle.add_passengers(taylor)
    
        expect(vehicle.number_of_adults).to eq(2)
    end

 

end
