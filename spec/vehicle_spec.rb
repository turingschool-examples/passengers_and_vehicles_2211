require './lib/passenger'
require './lib/vehicle'

RSpec.describe Passenger do
  context "happpy paths" do
  before(:each) do 
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    @jude = Passenger.new({"name" => "Jude", "age" => 20}) 

  end

  it "is a Vehicle object " do 

    expect(@vehicle).to be_an_instance_of(Vehicle)

  end

  it "the vehicle is from the year 2001" do 

    expect(@vehicle.year).to eq("2001")

  end

  it "its make is a Honda" do 

    expect(@vehicle.make).to eq("Honda")

  end

  it "its model is a Civic" do 

    expect(@vehicle.model).to eq("Civic")

  end

  it "the vehicle's default is not to speed" do 

    expect(@vehicle.speeding?).to eq(false)

  end
  
  it "the vehicle's can speed up though" do 

    @vehicle.speed

    expect(@vehicle.speeding?).to eq(true)

  end

  it "the vehicle begans with no passengers" do 

    expect(@vehicle.passengers).to be_empty

  end

  it "the vehicle can add passengers to it" do 

    @vehicle.add_passenger(@charlie) 
    @vehicle.add_passenger(@jude)
    @vehicle.add_passenger(@taylor)  

    expect(@vehicle.passengers).to eq([@charlie, @jude, @taylor])

  end

  it "the vehicle can count the number of adults in it" do 

    @vehicle.add_passenger(@charlie) 
    @vehicle.add_passenger(@jude)
    @vehicle.add_passenger(@taylor)  

    expect(@vehicle.num_adults).to eq(2)
  end 

end 
end 