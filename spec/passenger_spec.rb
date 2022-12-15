require 'rspec'
require './lib/passenger'

RSpec.describe Passenger do 
  it 'exists and has attributes' do 
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})     

    expect(charlie).to be_a(Passenger)
    expect(taylor).to be_a(Passenger)
    expect(charlie.name).to eq("Charlie")
    expect(charlie.age).to eq(18)
    expect(taylor.name).to eq("Taylor")
    expect(taylor.age).to eq(12)
  end

  describe '#adult?' do 
    it 'is an adult if they are 18 or older' do 
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
      
      expect(charlie.adult?).to eq(true)
      expect(taylor.adult?).to eq(false)

    end
  end

  describe '#driver?' do 
    charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 

    expect(charlie.driver?).to eq(false)

    charlie.drive 

    expect(charlie.driver).to eq(true)
  end
end