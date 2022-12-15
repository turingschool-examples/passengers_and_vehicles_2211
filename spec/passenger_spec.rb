require './lib/passenger'

RSpec.describe Passenger do 
  it 'will exist and have attributes' do 
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie).to be_a(Passenger)
    expect(charlie.name).to eq("Charlie")
    expect(charlie.age).to eq(18)
    expect(charlie.adult?).to eq(true)
    expect(taylor.adult?).to eq(false)
  end

  it 'will check to see who the driver is' do 
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie.driver?).to eq(false)

    charlie.drive

    expect(charlie.driver?).to eq(true)
  end
end