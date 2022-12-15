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
  end
end