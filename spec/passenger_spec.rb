require './lib/passenger'

describe Passenger do
  before(:each) do
    @charlie = Passenger.new({name: "Charlie", age: 18})
    @taylor = Passenger.new({name: "Taylor", age: 12})
  end

    it 'exists' do
    expect(@charlie).to be_a(Passenger)
    end

    it 'passengers have a name' do          
      expect(@charlie.name).to eq("Charlie")
      expect(@charlie.age).to eq(18)
    end
end