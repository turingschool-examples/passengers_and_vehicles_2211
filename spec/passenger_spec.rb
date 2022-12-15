require './lib/passenger'

RSpec.describe Passenger do
  before(:each) do
    hash_1 = {name: "Charlie", age: 18} 
    hash_2 = {name: "Taylor", age: 12}

    @charlie = Passenger.new(hash_1)
    @taylor = Passenger.new(hash_2)
  end
  
  it "exists" do
    expect(@charlie).to be_an_instance_of(Passenger)
  end

  it "has attributes" do
    expect(@charlie.name).to eq("Charlie")
    expect(@charlie.age).to eq(18)
  end

  it "is an adult at age 18" do
    expect(@charlie.adult?).to be true 
    expect(@taylor.adult?).to be false
  end

  it "doesn't drive by default" do
    expect(@charlie.driver?).to be false
  end

  it "can drive" do 
    @charlie.drive
    
    expect(@charlie.driver?).to be true
  end

end