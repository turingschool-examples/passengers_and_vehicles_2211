require './test/test_helper.rb'

RSpec.describe Passenger do
  let(:charlie) { Passenger.new({'name' => 'Charlie', 'age' => 18}) } 
  let(:taylor) { Passenger.new({'name' => 'Taylor', 'age' => 12}) }
  
  describe 'Iteration1' do
    it 'exists' do
      expect(charlie).to be_a(Passenger)
      expect(taylor).to be_a(Passenger)
    end
  end
end