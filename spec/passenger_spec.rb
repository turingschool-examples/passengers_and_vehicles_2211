require './lib/passenger.rb'

describe Passenger do

it "exsits" do
  charlie = Passenger.new({"name" => "Charlie", "age" => 18})
  expect(charlie).to be_an_instance_of(Passenger)
end

it "can have a name" do
  charlie = Passenger.new({"name" => "Charlie", "age" => 18})
  expect(charlie.name).to eq("Charlie")
end

end