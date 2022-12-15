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

    it '3. has an age' do
      expect(charlie.age).to eq(18)
    end

    it '4. checks if passenger is an adult' do
      expect(charlie.adult?).to eq(true)
      expect(taylor.adult?).to eq(false)
    end

#  charlie.adult?
# # => true

#  taylor.adult?
# # => false

#  charlie.driver?
# # => false

#  charlie.drive

#  charlie.driver?
# # => true
  end
end