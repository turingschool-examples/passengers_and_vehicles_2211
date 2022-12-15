require './lib/vehicle'

describe Vehicle do
  context 'Iteration 2' do
    before(:each) do
      @vehicle = Vehicle.new("2001", "Honda", "Civic")
    end

    it '1. exists' do
      expect(@vehicle).to be_a(Vehicle)
    end
  end
end