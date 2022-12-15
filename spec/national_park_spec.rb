require './lib/national_park'
require './lib/vehicle'
require './lib/passenger'

describe NationalPark do
  context 'Iteration 3' do
    before(:each) do
      @national_park = NationalPark.new("Arches", 15)

      @vehicle1 = Vehicle.new("2001", "Honda", "Civic")
      @vehicle2 = Vehicle.new("2021", "Chevrolet", "Colorado")


      @charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
      @jude = Passenger.new({"name" => "Jude", "age" => 20})
      @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      @adam = Passenger.new({"name" => "Adam", "age" => 36})

      @vehicle1.add_passenger(@charlie)
      @vehicle1.add_passenger(@jude)
      @vehicle1.add_passenger(@taylor)

      @vehicle2.add_passenger(@adam)
    end

    it '1. exists' do
      expect(@national_park).to be_a(NationalPark)
    end

    it '2. has readable attributes' do
      expect(@national_park.name).to eq("Arches")
      expect(@national_park.fee).to eq(15)
      expect(@national_park.vehicles).to eq([])
    end

    it '3. can add vehicle to park' do
      expect(@national_park.vehicles).to eq([])

      @national_park.add_vehicle(@vehicle1)
      @national_park.add_vehicle(@vehicle2)

      expect(@national_park.vehicles).to eq([@vehicle1, @vehicle2])
    end

    it '4. can list all passengers in the park' do
      expect(@national_park.list_passengers).to eq([])

      @national_park.add_vehicle(@vehicle1)
      @national_park.add_vehicle(@vehicle2)

      expect(@national_park.list_passengers).to eq([@charlie, @jude, @taylor, @adam])
    end

    it '5. can calculate revenue generated' do
      expect(@national_park.calculate_revenue).to eq(0)

      @national_park.add_vehicle(@vehicle1)
      @national_park.add_vehicle(@vehicle2)

      expect(@national_park.calculate_revenue).to eq(45)
    end
  end
end