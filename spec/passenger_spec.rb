require './lib/passenger'

RSpec.describe Passenger do
  let(:charlie) { Passenger.new({ name: "Charlie", age: 18}) }
  let(:taylor) { Passenger.new({ name: "Taylor", age: 12}) } 

  describe '#initialize' do
    it 'exists and has attributes' do
      expect(charlie).to be_a(Passenger)
      expect(charlie.name).to eq("Charlie")
      expect(charlie.age).to eq(18)
    end
  end

  describe '#adult?' do
    it 'is not a driver by default' do  
      expect(charlie.adult?).to be true
      expect(taylor.adult?).to be false
    end
  end  

  describe '#driver?' do
    it 'is not a driver by default and can drive' do 
      expect(charlie.driver?).to be false
      
      charlie.drive

      expect(charlie.driver?).to be true
      expect(taylor.driver?).to be false
    end
  end
end