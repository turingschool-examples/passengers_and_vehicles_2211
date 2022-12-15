require './lib/vehicle'
require './lib/passenger'

describe Vehicle do
  context 'Iteration 2' do
    before(:each) do
      @vehicle = Vehicle.new("2001", "Honda", "Civic")

      @charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
      @jude = Passenger.new({"name" => "Jude", "age" => 20})
      @taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
    end

    it '1. exists' do
      expect(@vehicle).to be_a(Vehicle)
    end
    
    it '2. has readable attributes' do
      expect(@vehicle.year).to eq("2001")
      expect(@vehicle.make).to eq("Honda")
      expect(@vehicle.model).to eq("Civic")
      expect(@vehicle.passengers).to eq([])
    end

    it '3. can speed and check if speeding' do
      expect(@vehicle.speeding?).to eq(false)

      @vehicle.speed

      expect(@vehicle.speeding?).to eq(true)
    end

    it '4. can add passengers' do
      expect(@vehicle.passengers).to eq([])

      @vehicle.add_passenger(@charlie)
      @vehicle.add_passenger(@jude)
      @vehicle.add_passenger(@taylor)

      expect(@vehicle.passengers).to eq([@charlie, @jude, @taylor])
    end
  end
end