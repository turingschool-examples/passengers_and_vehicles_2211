require './lib/passenger'
require './lib/vehicle'
require './lib/park'

describe Park do
    let(:vehicle_1) {Vehicle.new("2001", "Honda", "Civic")}
    let(:vehicle_2) {Vehicle.new("2008", "Toyota", "4Runner")}
    let(:vehicle_3) {Vehicle.new("2022", "Mercedes", "Sprinter")}
    let(:charlie) {Passenger.new({"name" => "Charlie", "age" => 18})}
    let(:taylor) {Passenger.new({"name" => "Taylor", "age" => 12})}
    let(:jude) {Passenger.new({"name" => "Jude", "age" => 20})}
    let(:tori) {Passenger.new({"name" => "Tori", "age" => 23})}
    let(:joe) {Passenger.new({"name" => "Joe", "age" => 27})}
    let(:meghan) {Passenger.new({"name" => "Meghan", "age" => 28})}
    let(:glacier) {Park.new("Glacier NP", 35)}

    it 'can initialize' do
        expect(glacier).to be_an_instance_of(Park)
    end

    it 'has readable attributes' do
        expect(glacier.name).to eq("Glacier NP")
        expect(glacier.price).to eq(35)
    end

    it 'can track vehicles entered' do
        expect(glacier.vehicles).to eq([])
        
        glacier.track_vehicle(vehicle_1)
        glacier.track_vehicle(vehicle_2)
        glacier.track_vehicle(vehicle_3)

        expect(glacier.vehicles).to eq([vehicle_1, vehicle_2, vehicle_3])
    end

    it 'can track passengers in park' do
        vehicle_1.add_passenger(charlie)  
        vehicle_1.add_passenger(jude)
        vehicle_1.add_passenger(taylor) 
        vehicle_2.add_passenger(tori)  
        vehicle_2.add_passenger(joe)
        vehicle_3.add_passenger(meghan) 
        glacier.track_vehicle(vehicle_1)
        glacier.track_vehicle(vehicle_2)
        glacier.track_vehicle(vehicle_3)

        expect(glacier.park_goers).to eq([charlie, jude, taylor, tori, joe, meghan])
    end

    xit 'can track revenue generated' do
        vehicle_1.add_passenger(charlie)  
        vehicle_1.add_passenger(jude)
        vehicle_1.add_passenger(taylor) 
        vehicle_2.add_passenger(tori)  
        vehicle_2.add_passenger(joe)
        vehicle_3.add_passenger(meghan)
        
        glacier.track_vehicle(vehicle_1)
        glacier.track_vehicle(vehicle_2)
        glacier.track_vehicle(vehicle_3)

        expect(glacier.revenue).to eq(210)

    end
end
