require './lib/vehicle'

describe Vehicle do
  context 'Iteration 2' do
    before(:each) do
      @vehicle = Vehicle.new("2001", "Honda", "Civic")
    end

    it '1. exists' do
      expect(@vehicle).to be_a(Vehicle)
    end
    
    it '2. has readable attributes' do
      expect(@vehicle.year).to eq("2001")
      expect(@vehicle.make).to eq("Honda")
      expect(@vehicle.model).to eq("Civic")
    end
  end
end