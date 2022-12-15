require './lib/vehicle'
require './lib/passenger'
require './lib/park'

RSpec.describe Vehicle do
    let(:park1) { Park.new("Jurrasic", 5)}
    let(:vehicle1) { Vehicle.new("2001", "Honda", "Civic") }
    let(:vehicle2) { Vehicle.new("2005", "Toyota", "Tacoma") }
    let(:charlie) { Passenger.new({"name" => "Charlie", "age" => 18})}
    let(:jude) { Passenger.new({"name" => "Jude", "age" => 20})}
    let(:taylor) { Passenger.new({"name" => "Taylor", "age" => 12})}

    it "has attributes" do
        expect(park1.name).to eq("Jurrasic")
        expect(park1.admission).to eq(5)
    end

    it 'can list all vehicles tha entered the park' do
        park1.add_vehicle(vehicle1)
        park1.add_vehicle(vehicle2)
        expect(park1.vehicles_in_park).to eq([vehicle1, vehicle2])
    end

    it "can list all passengers that enter the park" do
        park1.add_vehicle(vehicle1)
        park1.add_vehicle(vehicle2)
        vehicle1.add_passenger(jude)
        vehicle1.add_passenger(taylor)
        vehicle2.add_passenger(charlie)
        expect(park1.list_passengers).to eq([jude, taylor, charlie])
    end

    it 'can calculate revenue' do
        expect(park1.revenue).to eq(0)
        park1.charge
        park1.charge
        expect(park1.revenue).to eq(10)
    end

    it 'can list all patrons' do
        park1.add_patron(charlie)
        expect(park1.patrons).to eq([charlie])
    end
end
