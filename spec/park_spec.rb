require 'RSpec'
require './lib/vehicle'
require './lib/passenger'
require './lib/park'

RSpec.describe Park do
  let(:park) { Park.new("Denali", 30) }
  let(:honda) { Vehicle.new("2008", "Honda", "Civic") }
  let(:toyata) { Vehicle.new("1999", "Toyata", "4Runner") }
  let(:ford) { Vehicle.new("2017", "Ford", "F150") }
  let(:taylor) { Passenger.new({name: "Taylor", age: 12}) }
  let(:charlie) { Passenger.new({name: "Charlie", age: 18}) }
  let(:jude) { Passenger.new({name: "Jude", age: 20}) }
  let(:kutter) { Passenger.new({name: "Kutter", age: 26}) }
  
  it 'exists' do

    expect(park).to be_an_instance_of(Park)
  end

  it 'has attributes' do

    expect(park.name).to eq("Denali")
    expect(park.price).to eq(30)
  end

  it 'can list all vehicles in the park' do
    
    park.add_vehicle(honda)
    park.add_vehicle(toyata)
    park.add_vehicle(ford)

    expect(park.vehicles).to eq([honda, toyata, ford])
  end

  it 'can list all passengers in the park' do
    honda.add_passenger(charlie)
    honda.add_passenger(taylor)
    toyata.add_passenger(jude)
    ford.add_passenger(kutter)

    park.add_vehicle(honda)
    park.add_vehicle(toyata)
    park.add_vehicle(ford)

    expect(park.list_all_passengers).to eq([charlie, taylor, jude, kutter])
  end

  it 'can calculate revenue by adult ticket sales' do
    honda.add_passenger(charlie)
    honda.add_passenger(taylor)
    toyata.add_passenger(jude)
    ford.add_passenger(kutter)

    park.add_vehicle(honda)
    park.add_vehicle(toyata)
    park.add_vehicle(ford)
   
    park.calculate_revenue
    expect(park.revenue).to eq(90)
  end

  it "can list the names of all vistors" do
    honda.add_passenger(charlie)
    honda.add_passenger(taylor)
    toyata.add_passenger(jude)
    ford.add_passenger(kutter)

    park.add_vehicle(honda)
    park.add_vehicle(toyata)
    park.add_vehicle(ford)

    expect(park.list_vistors_by_name).to eq(["Charlie", "Taylor", "Jude", "Kutter"])
  end

  it "can list all adult vistors" do
    honda.add_passenger(charlie)
    honda.add_passenger(taylor)
    toyata.add_passenger(jude)
    ford.add_passenger(kutter)

    park.add_vehicle(honda)
    park.add_vehicle(toyata)
    park.add_vehicle(ford)

    expect(park.list_of_adults).to eq(["Charlie", "Jude", "Kutter"])
  end
end