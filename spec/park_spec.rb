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
end