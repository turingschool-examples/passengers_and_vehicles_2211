require './lib/passenger.rb'

describe Passenger do

it "exsits" do
  passenger = Passenger.new()  
end

it "can have a name" do
  charlie = Passenger.new({"name" => "Charlie", "age" => 18})
  expect(charlie.name).to eq("Chalie")
end

end