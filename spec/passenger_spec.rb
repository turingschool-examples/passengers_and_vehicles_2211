require './lib/passenger'

RSpec.describe Passenger do 
  it 'will exist and have attributes' do 
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})

    expect(charlie).to_be a(Passenger)
    expect(charlie.name).to eq("Charlie")
    expect(charlie.age).to eq(18)
    expect(charlie.adult?).to eq(true)
  end
end