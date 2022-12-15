require './lib/passenger'
require './lib/vehicle'
require './lib/park.rb'


describe Park do 

  it 'has a name' do
    park = Park.new("Yosemite", 25)
    expect(park.name).to eq("Yosemite")
  end

  it 'has an admission price' do
    park = Park.new("Yosemite", 25)
    expect(park.admission_price).to eq(25)
  end

  it 'has a list of vehicles' do
    park = Park.new("Yosemite", 25)
    expect(park.vehicles).to eq([])
    vehicle1 = Vehicle.new("2002", "Honda", "CRV")
    vehicle2 = Vehicle.new("2004", "Volks", "Jetta")
    vehicle3 = Vehicle.new("1999", "Toyota", "Tacoma")
    park.add_vehicle(vehicle1)
    park.add_vehicle(vehicle2)
    park.add_vehicle(vehicle3)
    expect(park.vehicles).to eq([vehicle1, vehicle2, vehicle3])
  end

  it 'has a list of passengers' do
    park = Park.new("Yosemite", 25)
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    mark = Passenger.new({"name" => "Mark", "age" => 6})
    julia = Passenger.new({"name" => "Julia", "age" => 41})
    emily = Passenger.new({"name" => "Emily", "age" => 16})
    jamal = Passenger.new({"name" => "Jamal", "age" => 23})
    vehicle1 = Vehicle.new("2002", "Honda", "CRV")
    vehicle2 = Vehicle.new("2004", "Volks", "Jetta")
 
    vehicle1.add_passenger(charlie)
    vehicle1.add_passenger(mark)
    vehicle2.add_passenger(julia)
    vehicle2.add_passenger(emily)
    vehicle2.add_passenger(jamal)
    park.add_vehicle(vehicle1)
    park.add_vehicle(vehicle2)
    expect(park.all_passengers).to eq([charlie, mark, julia, emily, jamal])
  end

  it 'can calculate revenue' do
    park = Park.new("Yosemite", 25)
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    mark = Passenger.new({"name" => "Mark", "age" => 6})
    julia = Passenger.new({"name" => "Julia", "age" => 41})
    emily = Passenger.new({"name" => "Emily", "age" => 16})
    jamal = Passenger.new({"name" => "Jamal", "age" => 23})
    vehicle1 = Vehicle.new("2002", "Honda", "CRV")
    vehicle2 = Vehicle.new("2004", "Volks", "Jetta")
 
    vehicle1.add_passenger(charlie)
    vehicle1.add_passenger(mark)
    vehicle2.add_passenger(julia)
    vehicle2.add_passenger(emily)
    vehicle2.add_passenger(jamal)
    park.add_vehicle(vehicle1)
    park.add_vehicle(vehicle2)

    expect(park.revenue).to eq(125)
  end

  it 'can sort passengers alphabetically' do
    park = Park.new("Yosemite", 25)
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    mark = Passenger.new({"name" => "Mark", "age" => 6})
    julia = Passenger.new({"name" => "Julia", "age" => 41})
    emily = Passenger.new({"name" => "Emily", "age" => 16})
    jamal = Passenger.new({"name" => "Jamal", "age" => 23})
    vehicle1 = Vehicle.new("2002", "Honda", "CRV")
    vehicle2 = Vehicle.new("2004", "Volks", "Jetta")
 
    vehicle1.add_passenger(charlie)
    vehicle1.add_passenger(mark)
    vehicle2.add_passenger(julia)
    vehicle2.add_passenger(emily)
    vehicle2.add_passenger(jamal)
    park.add_vehicle(vehicle1)
    park.add_vehicle(vehicle2)
    
    expect(park.abc_passenger_list).to eq(["Charlie", "Emily", "Jamal", "Julia", "Mark"])
  end

  it 'can list passengers by minors and adults' do
    park = Park.new("Yosemite", 25)
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    mark = Passenger.new({"name" => "Mark", "age" => 6})
    julia = Passenger.new({"name" => "Julia", "age" => 41})
    emily = Passenger.new({"name" => "Emily", "age" => 16})
    jamal = Passenger.new({"name" => "Jamal", "age" => 23})
    vehicle1 = Vehicle.new("2002", "Honda", "CRV")
    vehicle2 = Vehicle.new("2004", "Volks", "Jetta")
 
    vehicle1.add_passenger(charlie)
    vehicle1.add_passenger(mark)
    vehicle2.add_passenger(julia)
    vehicle2.add_passenger(emily)
    vehicle2.add_passenger(jamal)
    park.add_vehicle(vehicle1)
    park.add_vehicle(vehicle2)

    expect(park.minors_adults).to eq({
      :minors => [emily, mark],
      :adults => [charlie, jamal, julia]
    })
  end

  it 'can generate a list of minors' do
    park = Park.new("Yosemite", 25)
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    mark = Passenger.new({"name" => "Mark", "age" => 6})
    julia = Passenger.new({"name" => "Julia", "age" => 41})
    emily = Passenger.new({"name" => "Emily", "age" => 16})
    jamal = Passenger.new({"name" => "Jamal", "age" => 23})
    vehicle1 = Vehicle.new("2002", "Honda", "CRV")
    vehicle2 = Vehicle.new("2004", "Volks", "Jetta")
 
    vehicle1.add_passenger(charlie)
    vehicle1.add_passenger(mark)
    vehicle2.add_passenger(julia)
    vehicle2.add_passenger(emily)
    vehicle2.add_passenger(jamal)
    park.add_vehicle(vehicle1)
    park.add_vehicle(vehicle2)

    expect(park.minors_list).to eq([emily, mark])
  end

  it 'can generate a list of adults' do
    park = Park.new("Yosemite", 25)
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    mark = Passenger.new({"name" => "Mark", "age" => 6})
    julia = Passenger.new({"name" => "Julia", "age" => 41})
    emily = Passenger.new({"name" => "Emily", "age" => 16})
    jamal = Passenger.new({"name" => "Jamal", "age" => 23})
    vehicle1 = Vehicle.new("2002", "Honda", "CRV")
    vehicle2 = Vehicle.new("2004", "Volks", "Jetta")
 
    vehicle1.add_passenger(charlie)
    vehicle1.add_passenger(mark)
    vehicle2.add_passenger(julia)
    vehicle2.add_passenger(emily)
    vehicle2.add_passenger(jamal)
    park.add_vehicle(vehicle1)
    park.add_vehicle(vehicle2)

    expect(park.adults_list).to eq([charlie, jamal, julia])

  end
end