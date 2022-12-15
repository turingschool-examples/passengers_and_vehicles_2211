require './lib/passenger'

RSpec.describe Passenger do
  before (:each) do
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

  it "exists" do
    expect(@taylor).to be_an_instance_of(Passenger)
  end

  it "has attributes" do
    expect(@charlie.name).to eq("Charlie")
    expect(@charlie.age).to eq(18)
  end

  it "adult?" do
    expect(@charlie.adult?).to be(true)
    expect(@taylor.adult?).to be(false)
  end

  it "not a driver by default" do
    expect(@charlie.driver?).to be (false)
    expect(@taylor.driver?).to be (false)
  end

  it "can change driver when drive" do
    @charlie.drive
    expect(@charlie.driver?).to be(true)
  end
end