require './lib/passenger'
require './lib/vehicle'
require './lib/park'

RSpec.describe Park do
  before(:each) do
    @park = Park.new("RMNP", "$20.00")
    @vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
    @charlie = Passenger.new({name: "Charlie", age: 18})
    @jude = Passenger.new({name: "Jude", age: 20})
    @taylor = Passenger.new({name: "Taylor", age: 12})
    @vehicle_2 = Vehicle.new("2019", "Toyota", "Tundra")
  end

  it "exists" do 
    expect(@park).to be_an_instance_of(Park)
  end

  it "has attributes" do 
    expect(@park.name).to eq("RMNP")
    expect(@park.price).to eq("$20.00")
    expect(@park.vehicles).to eq([])
  end

  it "can list_all_vehicles" do
    
    @park.add_vehicle(@vehicle_1)

    expect(@park.list_all_vehicles).to eq([@vehicle_1])
  end

  it "can list_all_passengers" do
    @vehicle_1.add_passenger(@jude)
    @vehicle_1.add_passenger(@taylor)

    @park.add_vehicle(@vehicle_1)

    expect(@park.list_all_passengers).to eq([@jude, @taylor])
  end
   
  it "can charge_admission" do
    @vehicle_1.add_passenger(@jude)
    @vehicle_1.add_passenger(@taylor)

    @vehicle_1.num_adults
    @park.charge_admission


    expect(@park.revenue).to eq("$20.00")
  end
end