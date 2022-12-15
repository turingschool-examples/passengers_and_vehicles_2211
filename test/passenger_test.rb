require './test/test_helper.rb'

RSpec.describe Passenger do
  let(:charlie) { Passenger.new({'name' => 'Charlie', 'age' => 18}) } 
  let(:taylor) { Passenger.new({'name' => 'Taylor', 'age' => 12}) }
  
  describe 'Iteration1' do
    it 'exists' do
      expect(charlie).to be_a(Passenger)
      expect(taylor).to be_a(Passenger)
    end

    it 'has a name' do
      expect(charlie.name).to eq('Charlie')
    end

#      charlie.name
# # => "Charlie"

#  charlie.age
# # => 18

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