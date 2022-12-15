require './test/test_helper.rb'

RSpec.describe Passenger do
  let(:charlie) { Passenger.new({'name' => 'Charlie', 'age' => 18}) } 
  let(:taylor) { Passenger.new({'name' => 'Taylor', 'age' => 12}) }
  
  describe 'Iteration1' do
    xit '1. exists' do
      expect(charlie).to be_a(Passenger)
      expect(taylor).to be_a(Passenger)
    end

    xit '2. has a name' do
      expect(charlie.name).to eq('Charlie')
    end

    xit '3. has an age' do
      expect(charlie.age).to eq(18)
    end

    it '4. checks if passenger is an adult' do
      expect(charlie.adult?).to eq(true)
      expect(taylor.adult?).to eq(false)
    end

    it '5. sets the passenger to driver' do
      expect(charlie.driver?).to eq(false)

      charlie.drive
      
      expect(charlie.driver?).to eq(true)
    end
  end
end