require './lib/passenger'
require './lib/vehicle'
require './lib/park'

describe Park do

  it "exists" do
  park = Park.new("Zion", 25)
  expect(park).to be_an_instance_of(Park)
  end

  it "has a name" do
  park = Park.new("Zion", 25)
  expect(park.name).to eq("Zion")
  end  

  it "has an admission price" do
    park = Park.new("Zion", 25)
    expect(park.admission_price).to eq(25)
  end  

  it "does not have vehicles in the park by default" do
    park = Park.new("Zion", 25)
    expect(park.vehicles).to eq([])
  end  

  it "can let vehicles enter the park" do
    park = Park.new("Zion", 25)
    honda = Vehicle.new("2001", "Honda", "Civic")
    park.enter_vehicle(honda)
    expect(park.vehicles).to eq([honda])
  end

  it "can list all passengers that entered the park" do
    park = Park.new("Zion", 25)
    honda = Vehicle.new("2001", "Honda", "Civic")
    toyota = Vehicle.new("2004", "Toyota", "4Runner")
    charlie = Passenger.new({"name" => "Charlie", 
    "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    honda.add_passenger(charlie)
    toyota.add_passenger(taylor)
    park.enter_vehicle(honda)
    park.enter_vehicle(toyota)
    expect(park.list_all_passengers).to eq([charlie, taylor])  
  end

  it "can calculate revenue generated" do
    park = Park.new("Zion", 25)
    honda = Vehicle.new("2001", "Honda", "Civic")
    toyota = Vehicle.new("2004", "Toyota", "4Runner")
    ford = Vehicle.new("2018", "Ford", "Transit")
    charlie = Passenger.new({"name" => "Charlie", 
    "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    stephanie = Passenger.new({"name" => "Stephanie", "age" => 33})
    matt = Passenger.new({"name" => "Matt", "age" => 35})
    honda.add_passenger(charlie)
    toyota.add_passenger(taylor)
    ford.add_passenger(stephanie)
    ford.add_passenger(matt)
    park.enter_vehicle(honda)
    park.enter_vehicle(toyota)
    park.enter_vehicle(ford)
    expect(park.calculate_revenue).to eq(75)  
  end

  it "can generate lists of attendees based on age" do
    park = Park.new("Zion", 25)
    honda = Vehicle.new("2001", "Honda", "Civic")
    toyota = Vehicle.new("2004", "Toyota", "4Runner")
    ford = Vehicle.new("2018", "Ford", "Transit")
    charlie = Passenger.new({"name" => "Charlie", 
    "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    sunita = Passenger.new({"name" => "Sunita", "age" => 39})
    callie = Passenger.new({"name" => "Callie", "age" => 5})
    stephanie = Passenger.new({"name" => "Stephanie", "age" => 33})
    matt = Passenger.new({"name" => "Matt", "age" => 35})
    honda.add_passenger(charlie)
    toyota.add_passenger(taylor)
    toyota.add_passenger(sunita)
    toyota.add_passenger(callie)
    ford.add_passenger(stephanie)
    ford.add_passenger(matt)
    park.enter_vehicle(honda)
    park.enter_vehicle(toyota)
    park.enter_vehicle(ford)
    expect(park.generate_patron_lists[:adults]).to eq(["Charlie", "Matt", "Stephanie", "Sunita"])
    expect(park.generate_patron_lists[:minors]).to eq(["Callie", "Taylor"])
    expect(park.generate_patron_lists[:all]).to eq(["Callie", "Charlie", "Matt", "Stephanie", "Sunita", "Taylor"])

  end

end