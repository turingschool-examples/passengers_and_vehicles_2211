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
  end
end