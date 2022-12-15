require './lib/passenger'

describe 'passnger' do 

  it 'has a name' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    expect(charlie.name).to eq("Charlie")

  end

  it 'has an age' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    expect(charlie.age).to eq(18)
  end

  it 'can be an adult' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 

    expect(charlie.adult?).to be(true)
    expect(taylor.adult?).to be(false)
  end

  it 'can be a driver' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    expect(charlie.driver?).to be(false)
    charlie.drive
    expect(charlie.driver?).to be(true)
  end

end