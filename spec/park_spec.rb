require "rspec"
require "./lib/passenger"
require "./lib/vehicle"
require "./lib/park"

RSpec.describe Park do
    describe 'Iteration 3' do
        it "#exists" do
            park = Park.new("Yellowstone", 9.99)

            expect(park).to be_an_instance_of(Park)
        end

        it "can read attributes" do
            park = Park.new("Yellowstone", 9.99)

            expect(park.name).to eq("Yellowstone")
            expect(park.admission_price).to eq(9.99)
        end

        it "can list all vehicles in the park" do
            park = Park.new("Yellowstone", 9.99)

            expect(park.all_vehciles).to eq("There are no vehicles in Yellowstone park.")

            vehicle1 = Vehicle.new("2001", "Honda", "Civic")

            park.add_vehicle(vehicle1)

            expect(park.vehicles).to eq([vehicle1])
            expect(park.all_vehciles).to eq("2001 Honda Civic")

            vehicle2 = Vehicle.new("2006", "Subaru", "Tribecca")

            park.add_vehicle(vehicle2)

            expect(park.all_vehciles).to eq("2001 Honda Civic\n2006 Subaru Tribecca")

            vehicle3 = Vehicle.new("2017", "Subaru", "Crosstrek")

            park.add_vehicle(vehicle3)

            expect(park.vehicles).to eq([vehicle1, vehicle2, vehicle3])
            expect(park.all_vehciles).to eq("2001 Honda Civic\n2006 Subaru Tribecca\n2017 Subaru Crosstrek")
        end

        it "can list all passengers in the park" do
            park = Park.new("Yellowstone", 9.99)

            vehicle1 = Vehicle.new("2001", "Honda", "Civic")
            vehicle2 = Vehicle.new("2006", "Subaru", "Tribecca")
            vehicle3 = Vehicle.new("2017", "Subaru", "Crosstrek")

            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            jude = Passenger.new({"name" => "Jude", "age" => 20})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})

            vehicle1.add_passenger(charlie)
            vehicle1.add_passenger(jude)
            vehicle1.add_passenger(taylor)

            expect(park.passengers).to eq([])
            expect(park.all_passengers).to eq("There are no passengers in Yellowstone park.")

            park.add_vehicle(vehicle1)

            expect(park.passengers).to eq([charlie, jude, taylor])
            expect(park.all_passengers).to eq("Charlie\nJude\nTaylor")

            isaac = Passenger.new({"name" => "Isaac", "age" => 28})
            asher = Passenger.new({"name" => "Asher", "age" => 26})

            vehicle2.add_passenger(isaac)
            vehicle2.add_passenger(asher)

            park.add_vehicle(vehicle2)

            expect(park.passengers).to eq([charlie, jude, taylor, isaac, asher])
            expect(park.all_passengers).to eq("Charlie\nJude\nTaylor\nIsaac\nAsher")

            # I miss you, man.
            shane = Passenger.new({"name" => "Shane", "age" => 27})

            vehicle3.add_passenger(shane)

            park.add_vehicle(vehicle3)

            expect(park.passengers).to eq([charlie, jude, taylor, isaac, asher, shane])
            expect(park.all_passengers).to eq("Charlie\nJude\nTaylor\nIsaac\nAsher\nShane")
        end

        it "can determine total money made" do
            park = Park.new("Yellowstone", 9.99)

            vehicle1 = Vehicle.new("2001", "Honda", "Civic")
            vehicle2 = Vehicle.new("2006", "Subaru", "Tribecca")
            vehicle3 = Vehicle.new("2017", "Subaru", "Crosstrek")

            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            jude = Passenger.new({"name" => "Jude", "age" => 20})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})

            vehicle1.add_passenger(charlie)
            vehicle1.add_passenger(jude)
            vehicle1.add_passenger(taylor)

            isaac = Passenger.new({"name" => "Isaac", "age" => 28})
            asher = Passenger.new({"name" => "Asher", "age" => 26})

            vehicle2.add_passenger(isaac)
            vehicle2.add_passenger(asher)

            shane = Passenger.new({"name" => "Shane", "age" => 27})

            vehicle3.add_passenger(shane)

            expect(park.money_today).to eq("We made no money today.")

            park.add_vehicle(vehicle1)

            expect(park.money_today).to eq("$19.98")

            park.add_vehicle(vehicle2)

            expect(park.money_today).to eq("$39.96")

            park.add_vehicle(vehicle3)

            expect(park.money_today).to eq("$49.95")
        end
    end

    describe 'Iteration 4' do
        it "can list all passengers/patrons in the park alphabetically" do
            park = Park.new("Yellowstone", 9.99)

            vehicle1 = Vehicle.new("2001", "Honda", "Civic")
            vehicle2 = Vehicle.new("2006", "Subaru", "Tribecca")
            vehicle3 = Vehicle.new("2017", "Subaru", "Crosstrek")

            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            jude = Passenger.new({"name" => "Jude", "age" => 20})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})

            vehicle1.add_passenger(taylor)
            vehicle1.add_passenger(jude)
            vehicle1.add_passenger(charlie)

            expect(park.passengers).to eq([])
            expect(park.all_patrons_alphabetized).to eq("There are no patrons in Yellowstone park.")

            park.add_vehicle(vehicle1)

            expect(park.passengers).to eq([taylor, jude, charlie])
            expect(park.all_patrons_alphabetized).to eq("Charlie\nJude\nTaylor")

            isaac = Passenger.new({"name" => "Isaac", "age" => 28})
            asher = Passenger.new({"name" => "Asher", "age" => 26})

            vehicle2.add_passenger(isaac)
            vehicle2.add_passenger(asher)

            park.add_vehicle(vehicle2)

            expect(park.passengers).to eq([taylor, jude, charlie, isaac, asher])
            expect(park.all_patrons_alphabetized).to eq("Asher\nCharlie\nIsaac\nJude\nTaylor")

            shane = Passenger.new({"name" => "Shane", "age" => 27})

            vehicle3.add_passenger(shane)

            park.add_vehicle(vehicle3)

            expect(park.passengers).to eq([taylor, jude, charlie, isaac, asher, shane])
            expect(park.all_patrons_alphabetized).to eq("Asher\nCharlie\nIsaac\nJude\nShane\nTaylor")
        end

        it "can list all minors in the park and all adults in the park" do
            park = Park.new("Yellowstone", 9.99)

            vehicle1 = Vehicle.new("2001", "Honda", "Civic")
            vehicle2 = Vehicle.new("2006", "Subaru", "Tribecca")
            vehicle3 = Vehicle.new("2017", "Subaru", "Crosstrek")

            charlie = Passenger.new({"name" => "Charlie", "age" => 17})
            jude = Passenger.new({"name" => "Jude", "age" => 20})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})

            vehicle1.add_passenger(charlie)
            vehicle1.add_passenger(jude)
            vehicle1.add_passenger(taylor)

            isaac = Passenger.new({"name" => "Isaac", "age" => 28})
            asher = Passenger.new({"name" => "Asher", "age" => 26})

            vehicle2.add_passenger(isaac)
            vehicle2.add_passenger(asher)

            shane = Passenger.new({"name" => "Shane", "age" => 27})

            vehicle3.add_passenger(shane)

            expect(park.all_minor_patrons_alphabetized).to eq("There are no patrons in Yellowstone park.")

            park.add_vehicle(vehicle2)

            expect(park.all_minor_patrons_alphabetized).to eq("There are no minors in Yellowstone park.")

            park.add_vehicle(vehicle1)

            expect(park.all_minor_patrons_alphabetized).to eq("Charlie\nJude")

            # park.add_vehicle(vehicle3)

            # expect(park.money_today).to eq("$49.95")
        end
    end
end