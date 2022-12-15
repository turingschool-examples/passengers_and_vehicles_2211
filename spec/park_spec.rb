require './lib/vehicle'
require './lib/passenger'
require './lib/park'

RSpec.describe Park do
    describe 'Iteration 3' do
        it '#exists' do
            park = Park.new({"name" => "Yellowstone", "admission" => 25})

            expect(park).to be_a(Park)
        end

        it '#has readable attributes' do
            park = Park.new({"name" => "Yellowstone", "admission" => 25})

            expect(park.name).to eq("Yellowstone")
            expect(park.admission).to eq(25)
        end

        it '#can add a vehicle to the park' do
            park = Park.new({"name" => "Yellowstone", "admission" => 25})

            vehicle = Vehicle.new("2001", "Honda", "Civic")

            park.add_vehicle(vehicle)

            expect(park.vehicles).to eq([vehicle])
        end

        it '#can add passengers to the park' do
            park = Park.new({"name" => "Yellowstone", "admission" => 25})

            vehicle = Vehicle.new("2001", "Honda", "Civic")

            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            jude = Passenger.new({"name" => "Jude", "age" => 20})  
            taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 

            park.add_vehicle(vehicle)

            park.add_passenger(charlie)
            park.add_passenger(jude) 
            park.add_passenger(taylor)

            expect(park.passengers).to eq([charlie, jude, taylor])
        end

        it '#can add generate revenue based on the age of passenger' do
            park = Park.new({"name" => "Yellowstone", "admission" => 25})

            vehicle = Vehicle.new("2001", "Honda", "Civic")

            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            jude = Passenger.new({"name" => "Jude", "age" => 20})  
            taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 

            park.add_vehicle(vehicle)

            park.add_passenger(charlie)
            park.add_passenger(jude) 
            park.add_passenger(taylor)

            expect(park.revenue).to eq(50)
        end
    end
end