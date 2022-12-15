require './lib/vehicle'
require './lib/passenger'
require './lib/national_park'

RSpec.describe NationalPark do
    let(:national_park) { NationalPark.new("Grand Teton", 20) }
    let(:vehicle_1) { Vehicle.new("2001", "Honda", "Civic") }
    let(:vehicle_2) { Vehicle.new("2012", "Toyota", "Corolla") }
    let(:charlie) { Passenger.new({"name" => "Charlie", "age" => 18}) }
    let(:jude) { Passenger.new({"name" => "Jude", "age" => 20}) }

    it "exists" do
        expect(national_park).to be_an_instance_of(NationalPark)
    end

    it "has attributes" do
        expect(national_park.name).to eq("Grand Teton")
        expect(national_park.price).to eq(20)
        expect(national_park.vehicles).to eq([])
    end

    it "list vehicles" do
        national_park.add_vehicle(vehicle_1)
        national_park.add_vehicle(vehicle_2)

        expect(national_park.vehicles).to eq([vehicle_1, vehicle_2])
    end

    # it "list of passengers" do
    #     national_park.add_vehicle(vehicle_1)

    #     vehicle_1.add_passenger(charlie)
    #     vehicle_1.add_passenger(jude)

    #     expect(national_park.vehicles).to eq([vehicle_1])
    #     expect(national_park.list_all_passengers).to eq([charlie, jude])
    # end
end