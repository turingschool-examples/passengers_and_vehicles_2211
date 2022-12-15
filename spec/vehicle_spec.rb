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

  it "is a Vehicle object " do 

    expect(@vehicle.year).to eq("2001")

  end

end 
end 