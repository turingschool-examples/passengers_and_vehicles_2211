require './lib/passenger'

describe Passenger do
  context 'Iteration 1' do
    before(:each) do
      charlie = {"name" => "Charlie", "age" => 18}
      taylor = {"name" => "Taylor", "age" => 12}
      @charlie = Passenger.new(charlie)
      @taylor = Passenger.new(taylor)
    end

    it '1. exists' do
      expect(@charlie).to be_a(Passenger)
    end

    it '2. has readable attributes' do
      expect(@charlie.name).to eq("Charlie")
      expect(@charlie.age).to eq(18)
    end

    it '3. can check if person is an adult' do
      expect(@charlie.adult?).to eq(true)
      expect(@taylor.adult?).to eq(false)
    end

    it '4. can check if person is the driver' do
      expect(@charlie.driver?).to eq(false)
      
      @charlie.drive

      expect(@charlie.driver?).to eq(true)
      expect(@taylor.driver?).to eq(false)
    end
  end
end