require './lib/intersection'
require './lib/vehicle'
require './lib/passenger'

RSpec.describe Intersection do
    let(:intersection) { Intersection.new("Horsetooth", "Timberline") }

    let(:vehicle1) { Vehicle.new("2001", "Honda", "Civic") }
    let(:vehicle2) { Vehicle.new("2004", "Volkswagen", "Jetta") }
    let(:vehicle3) { Vehicle.new("2018", "Toyota", "Prius") }


    let(:charlie) { Passenger.new({"name" => "Charlie", "age" => 18}) }
    let(:jude) { Passenger.new({"name" => "Jude", "age" => 20}) }
    let(:taylor) { Passenger.new({"name" => "Taylor", "age" => 12}) }
    let(:alex) { Passenger.new({"name" => "Alex", "age" => 55}) }
    let(:eve) { Passenger.new({"name" => "Eve", "age" => 15}) }

    it "exists" do

        expect(intersection).to be_an_instance_of(Intersection)
        expect(vehicle1).to be_an_instance_of(Vehicle)
        expect(charlie).to be_an_instance_of(Passenger)
    end

    it "intersection has cross-streets" do
        expect(intersection.street1).to eq("Horsetooth")
        expect(intersection.street2).to eq("Timberline")
    end

    it "can list all vehicles passed through it" do
        intersection.pass(vehicle1)
        intersection.pass(vehicle2)

        expect(intersection.passed_cars).to eq([vehicle1, vehicle2])

    end

    it "can list all vehicles that were speeding through it" do
        intersection.pass(vehicle1)
        intersection.pass(vehicle2)
        vehicle2.speed

        expect(intersection.speeding_cars).to eq([vehicle2])

    end

    it "can list all drivers that were speeding through it" do
        vehicle1.add_passenger(charlie)
        vehicle1.add_passenger(jude)
        charlie.drive

        vehicle2.add_passenger(taylor)
        vehicle2.add_passenger(alex)
        vehicle2.speed
        taylor.drive

        vehicle3.add_passenger(eve)
        eve.drive

        expect(intersection.speeding_drivers).to eq([taylor])

    end
end