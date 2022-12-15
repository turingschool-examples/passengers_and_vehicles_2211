require './lib/passenger'

describe Passenger do
  context 'Iteration 1' do
    before(:each) do
      charlie = {"name" => "Charlie", "age" => 18}
      @passenger = Passenger.new(charlie)
    end

    it '1. exists' do
      expect(@passenger).to be_a(Passenger)
    end
    
    it '2. has readable attributes' do
      expect(@passenger.name).to eq("Charlie")
      expect(@passenger.age).to eq(18)
    end
  end
end