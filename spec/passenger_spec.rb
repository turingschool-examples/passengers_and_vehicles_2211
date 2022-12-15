require './lib/passenger'
require 'rspec'
require 'pry'

RSpec.describe Passenger do
  it 'is an instence of Passenger and has attributes' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    
    expect(charlie.name).to eq("Charlie")
    expect(charlie.age).to eq(18)
  end

  it 'can check if they are an adult' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie.adult?).to be true
    expect(taylor.adult?).to be false
  end

  it 'can check if they are a driver and drive' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    
    expect(charlie.driver?).to be false
    charlie.drive
    expect(charlie.driver?).to be true
  end

end