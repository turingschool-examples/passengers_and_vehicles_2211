require "rspec"
require "./lib/passenger"
require "./lib/vehicle"

RSpec.describe Vehicle do
    describe 'Iteration 2' do
        it "#exists" do
            vehicle = Vehicle.new("2001", "Honda", "Civic")

            expect(vehicle).to be_an_instance_of(Vehicle)
        end

        it "can read attributes" do
            vehicle = Vehicle.new("2001", "Honda", "Civic")

            expect(vehicle.year).to eq("2001")
            expect(vehicle.make).to eq("Honda")
            expect(vehicle.model).to eq("Civic")
        end

        it "can affect attributes with method speed and check with speeding? method" do
            vehicle = Vehicle.new("2001", "Honda", "Civic")

            vehicle.speed

            expect(vehicle.speeding?).to eq(true)
        end

        it "can see and interact with an array of passenger class objects" do
            vehicle = Vehicle.new("2001", "Honda", "Civic")

            expect(vehicle.passengers).to eq([])

            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            jude = Passenger.new({"name" => "Jude", "age" => 20})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})

            vehicle.add_passenger(charlie)
            vehicle.add_passenger(jude)
            vehicle.add_passenger(taylor)

            expect(vehicle.passengers).to eq([charlie, jude, taylor])

            expect(vehicle.num_adults).to eq(2)
        end
    end
end