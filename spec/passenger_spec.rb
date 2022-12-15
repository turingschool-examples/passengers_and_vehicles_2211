require './lib/passenger'

RSpec.describe Passenger do
  context "happpy paths" do
  before(:each) do 

    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})

  end

  it "is a Passenger object named Charlie" do 

    expect(@charlie).to be_an_instance_of(Passenger)
  end

  it "is a Passenger object named Taylor" do 

    expect(@taylor).to be_an_instance_of(Passenger)
  end

  it "object charlie has a name" do 
    expect(@charlie.name).to eq("Charlie")
  end

  it "object charlie has an age" do 
    expect(@charlie.age).to eq(18)
  end

  it "charlie is an adult" do 
    expect(@charlie.adult?).to eq(true)
  end

  it "taylor is no an adult" do 
    expect(@taylor.adult?).to eq(false)
  end

  it "charlie begins not being a driver" do 
    expect(@charlie.driver?).to eq(false)
  end

  it "once charlie drives, he becomes a driver" do 
    @charlie.drive

    expect(@charlie.driver?).to eq(false)
  end

end 
end 