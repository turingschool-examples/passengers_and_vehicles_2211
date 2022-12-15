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

it "can have an age" do
  charlie = Passenger.new({"name" => "Charlie", "age" => 18})
  expect(charlie.age).to eq(18)
end

it "can differentiate between being an adult or child" do
  charlie = Passenger.new({"name" => "Charlie", "age" => 18})
  taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  expect(charlie.adult?).to eq(true)
  expect(taylor.adult?).to eq(false)
end

it "cannot drive by default" do
  charlie = Passenger.new({"name" => "Charlie", "age" => 18})
  expect(charlie.driver?). to eq(false)
end

it "can become a driver" do
  charlie = Passenger.new({"name" => "Charlie", "age" => 18})
  charlie.drive
  expect(charlie.driver?). to eq(true)
end




end