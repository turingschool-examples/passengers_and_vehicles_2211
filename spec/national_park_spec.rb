require './lib/passenger'
require './lib/vehicle'
require './lib/national_park'

RSpec.describe NationalPark do
  let(:vehicle_1) { Vehicle.new("2001", "Honda", "Civic") }
  let(:vehicle_2) { Vehicle.new("2018", "Subaru", "Outback") }
  let(:charlie) { Passenger.new({ name: "Charlie", age: 18}) }
  let(:jude) { Passenger.new({ name: "Jude", age: 20}) } 
  let(:taylor) { Passenger.new({ name: "Taylor", age: 12}) } 
  let(:national_park) { NationalPark.new("Rocky Mountian", 10) } 
  
  describe '#initialize' do
    it 'exists and has attributes' do
      expect(national_park).to be_a(NationalPark)
      expect(national_park.name).to eq("Rocky Mountian")
      expect(national_park.price).to eq(10)
    end
  end

  describe '#vehicle_list' do
    it 'can list all the vehicles that entered the park' do
      national_park.add_vehicles(vehicle_1)
      national_park.add_vehicles(vehicle_2)

      expect(national_park.vehicles.count).to eq(2)
    end
  end

  describe '#passenger_list' do
    it 'can list all the passengers that entered the park' do
      national_park.add_vehicles(vehicle_1)
      national_park.add_vehicles(vehicle_2)

      vehicle_1.add_passenger(charlie) 
      vehicle_2.add_passenger(jude)
      vehicle_2.add_passenger(taylor)
      # require 'pry'; binding.pry
      expect(national_park.passenger_list).to eq(2)
    end
  end
end 