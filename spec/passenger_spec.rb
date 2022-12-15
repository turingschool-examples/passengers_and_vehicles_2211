require './lib/passenger'

RSpec.describe Passenger do
  it 'exists' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    
    expect(charlie).to be_an_instance_of(Passenger)
  end

  it 'has attributes' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})  

    expect(charlie.name).to eq("Charlie")
    expect(charlie.age).to eq(18)
  end

  it 'checks age to see if is adult?' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})  

    expect(charlie.adult?).to eq(true)
    expect(taylor.adult?).to eq(false)
  end

  it 'assign driver' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})  

    expect(charlie.driver?).to eq(false)
    charlie.driver
    expect(charlie.driver?).to eq(true)
  end
end