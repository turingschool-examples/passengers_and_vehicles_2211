require './lib/vehicle'
require './lib/passenger'
require './lib/national_park'

RSpec.describe NationalPark do
  it 'exists' do
    nationalpark_1 = NationalPark.new("Boston's Park", 10)

    expect(nationalpark_1).to be_an_instance_of(NationalPark)
  end

  it 'has attributes' do
    nationalpark_1 = NationalPark.new("Boston's Park", 10)

    expect(nationalpark_1.name).to eq("Boston's Park")
    expect(nationalpark_1.admission).to eq(10)
    expect(nationalpark_1.vehicles).to eq([])
  end

  it 'can list vehicles' do
    nationalpark_1 = NationalPark.new("Boston's Park", 10)
    vehicle1 = Vehicle.new("2001", "Honda", "Civic")
    vehicle2 = Vehicle.new("1967", "Ford", "Mustang")
    
    nationalpark_1.add_vehicle(vehicle1)
    nationalpark_1.add_vehicle(vehicle2)
    # require 'pry'; binding.pry
    expect(nationalpark_1.vehicles).to eq([vehicle1, vehicle2])
  end

  it 'can list passengers' do
    nationalpark_1 = NationalPark.new("Boston's Park", 10)
    vehicle1 = Vehicle.new("2001", "Honda", "Civic")
    vehicle2 = Vehicle.new("1967", "Ford", "Mustang")
    
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    jude = Passenger.new({"name" => "Jude", "age" => 20})

    vehicle1.add_passenger(charlie)
    vehicle1.add_passenger(taylor)
    vehicle2.add_passenger(jude)

    nationalpark_1.add_vehicle(vehicle1)
    nationalpark_1.add_vehicle(vehicle2)

    expect(nationalpark_1.vehicles).to eq([vehicle1, vehicle2])
    # require 'pry'; binding.pry
    expect(nationalpark_1.vehicles.first.passengers).to eq([charlie, taylor])
    expect(nationalpark_1.vehicles.last.passengers).to eq([jude])
  end
end