require './lib/national_park'
require './lib/vehicle'
require './lib/passenger'

describe NationalPark do
  context 'Iteration 3' do
    before(:each) do
      @national_park = NationalPark.new("Arches", 30)

      @vehicle = Vehicle.new("2001", "Honda", "Civic")

      @charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
      @jude = Passenger.new({"name" => "Jude", "age" => 20})
      @taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
    end

    it '1. exists' do
      expect(@national_park).to be_a(NationalPark)
    end

    it '2. has readable attributes' do
      expect(@national_park.name).to eq("Arches")
      expect(@national_park.fee).to eq(30)
    end
  end
end