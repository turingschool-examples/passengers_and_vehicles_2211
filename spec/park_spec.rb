require './lib/park'
require './lib/passenger'
require './lib/vehicle'
require 'rspec'
require 'pry'

RSpec.describe Park do
  describe 'Iteration 3' do
    it 'is a park and has attributes' do
      canyonlands = Park.new('Canyonlands', 20)
      
      expect(canyonlands.name).to eq('Canyonlands')
      expect(canyonlands.price).to eq(20)
    end

    it 'can have vehicles enter and return all that have' do
      canyonlands = Park.new('Canyonlands', 20)

      expect(canyonlands.vehicles_entered).to eq([])
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      canyonlands.admit_vehicle(vehicle)
      expect(canyonlands.vehicles_entered).to eq([vehicle])
    end

    it 'can list and count the passengers that have entered in vehicles' do
      canyonlands = Park.new('Canyonlands', 20)
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)
      canyonlands.admit_vehicle(vehicle)

      expect(canyonlands.visitors).to include(charlie, jude, taylor)

      vehicle2 = Vehicle.new("2015", "MB", "Sprinter")
      james = Passenger.new({"name" => "James", "age" => 32})
      ruth = Passenger.new({"name" => "Ruth", "age" => 20})
      vehicle2.add_passenger(james)
      vehicle2.add_passenger(ruth)

      canyonlands.admit_vehicle(vehicle2)

      expect(canyonlands.visitors.count).to eq(5)
    end

    it 'can calculate total revenue' do
      canyonlands = Park.new('Canyonlands', 20)
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)
      canyonlands.admit_vehicle(vehicle)

      expect(canyonlands.revenue).to eq(60)

      vehicle2 = Vehicle.new("2015", "MB", "Sprinter")
      james = Passenger.new({"name" => "James", "age" => 32})
      ruth = Passenger.new({"name" => "Ruth", "age" => 20})
      vehicle2.add_passenger(james)
      vehicle2.add_passenger(ruth)

      canyonlands.admit_vehicle(vehicle2)

      expect(canyonlands.revenue).to eq(100)
    end
  end

  describe 'Iteration 4' do
    it 'can list all the names of patrons' do
      canyonlands = Park.new('Canyonlands', 20)
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)
      canyonlands.admit_vehicle(vehicle)
      expect(canyonlands.list_patrons_by_name).to eq(["Charlie", "Jude", "Taylor"])

      vehicle2 = Vehicle.new("Ageless", "White Stallion", "Shadowfax")
      dumbledore = Passenger.new({"name" => "Albus", "age" => 188})
      gandalf = Passenger.new({"name" => "Gandalf, the White", "age" => 562})
      vehicle2.add_passenger(dumbledore)
      vehicle2.add_passenger(gandalf)
      canyonlands.admit_vehicle(vehicle2)

      expect(canyonlands.list_patrons_by_name).to eq(["Albus", "Charlie", "Gandalf, the White", "Jude", "Taylor"])

    end
  end

end