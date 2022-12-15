require './lib/vehicle'
require './lib/passenger'
require './lib/park'

RSpec.describe Park do
    let(:park) { Park.new("Rainbow", 10) }
    let(:smith_fam) { Vehicle.new("2001", "Honda", "Civic") }
    let(:charlie) { Passenger.new({ "name" => "Charlie", "age" => 18 })}
    let(:jude) { Passenger.new({ "name" => "Jude", "age" => 20 })}
    let(:taylor) { Passenger.new({ "name" => "Taylor", "age" => 12 })}


    it 'exists' do
        expect(park).to be_instance_of(Park)
    end

    it 'has_attributes' do
        expect(park.name).to eq("Rainbow")
        expect(park.price).to eq(10)
    end
     
    it 'add_vehicle' do
        smith_fam.add_passengers(charlie)
        smith_fam.add_passengers(jude)
        smith_fam.add_passengers(taylor)

        park.add_vehicles(smith_fam)

        expect(park.vehicles).to eq([smith_fam])
        expect(park.vehicles.first.passengers).to eq([charlie, jude, taylor])
    end

    it 'calculate_revenue' do
        smith_fam.add_passengers(charlie)
        smith_fam.add_passengers(jude)
        smith_fam.add_passengers(taylor)

        park.add_vehicles(smith_fam)
        expect(park.calculate_revenue("age")).to eq(20)
    end

end
