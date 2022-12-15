require './lib/passenger'
require './lib/vehicle'
require './lib/national_park'

RSpec.describe NationalPark do 
  it 'will exist and have attributes' do 
    park = NationalPark.new("Grand Canyon", 30)

    expect(park).to be_a(NationalPark)
    expect(park.name).to eq("Grand Canyon")
    expect(park.admission_cost).to eq(30)
  end

  it 'will check to see what vehicles have entered the park and how many passengers' do 
    park = NationalPark.new("Grand Canyon", 30)
    vehicle1 = Vehicle.new("2001", "Honda", "Civic")
    vehicle2 = Vehicle.new("2019", "Toyota", "4Runner")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
    jude = Passenger.new({"name" => "Jude", "age" => 20}) 
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    brian = Passenger.new({"name" => "Brian", "age" => 20})
    john = Passenger.new({"name" => "John", "age" => 18})
    carolyn = Passenger.new({"name" => "Carolyn", "age" => 23})

    vehicle1.add_passenger(charlie)
    vehicle1.add_passenger(jude)    
    vehicle1.add_passenger(taylor)  

    vehicle2.add_passenger(brian)
    vehicle2.add_passenger(john)
    vehicle2.add_passenger(carolyn)

    park.add_vehicle(vehicle1)
    
    expect(park.vehicles).to eq([vehicle1])
    expect(park.passengers).to eq([charlie, jude, taylor])

    park.add_vehicle(vehicle2)

    expect(park.vehicles).to eq([vehicle1, vehicle2])
    expect(park.passengers).to eq([charlie, jude, taylor, brian, john, carolyn])

  end
end