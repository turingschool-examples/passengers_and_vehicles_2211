require 'rspec'
require './lib/passenger'
require './lib/vehicle'
require './lib/park'

RSpec.describe 'Passenger and Vehicles Spec Harness' do
  before(:each) do
    @vehicle  = Vehicle.new("2001", "Honda", "Civic")
    @vehicle2 = Vehicle.new("2021", "Toyota", "4Runner")
    @charlie  = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor   = Passenger.new({"name" => "Taylor", "age" => 12})
    @park     = Park.new('Yosemite', 25)
  end

  describe 'Iteration 1' do 
    it '1. Passenger Instantiation' do
      expect(Passenger).to respond_to(:new).with(1).argument

      expect(@charlie).to be_a(Passenger)
      expect(@charlie).to respond_to(:name).with(0).argument
      expect(@charlie.name).to eq("Charlie")
      expect(@charlie).to respond_to(:age).with(0).argument
      expect(@charlie.age).to eq(18)
    end

    it '2. Passenger #adult?' do
      expect(@charlie).to respond_to(:adult?).with(0).argument
      expect(@charlie.adult?).to eq(true)
      expect(@taylor.adult?).to eq(false)
    end

    it '3. Passenger #driver?' do
      expect(@charlie).to respond_to(:driver?).with(0).argument
      expect(@charlie.driver?).to eq(false)
    end

    it '4. Passenger #drive' do
      expect(@charlie).to respond_to(:drive).with(0).argument
      @charlie.drive
      expect(@charlie.driver?).to eq(true)
    end
  end

  describe 'Iteration 2' do
    it '5. Vehicle Instantiation' do
      expect(Vehicle).to respond_to(:new).with(3).argument

      expect(@vehicle).to be_a(Vehicle)
      expect(@vehicle.year).to eq("2001")
      expect(@vehicle.make).to eq("Honda")
      expect(@vehicle.model).to eq("Civic")
    end

    it '6. Vehicle #speeding?' do
      expect(@vehicle).to respond_to(:speeding?).with(0).argument
      expect(@vehicle.speeding?).to eq(false)
    end

    it '7. Vehicle #speed' do
      expect(@vehicle).to respond_to(:speed).with(0).argument
      @vehicle.speed
      expect(@vehicle.speeding?).to eq(true)
    end

    it '8. Vehicle #passengers' do
      expect(@vehicle).to respond_to(:passengers).with(0).argument
      expect(@vehicle.passengers).to eq([])
    end

    it '9. Vehicle #add_passenger' do
      expect(@vehicle).to respond_to(:add_passenger).with(1).argument
      @vehicle.add_passenger(@charlie)
      @vehicle.add_passenger(@taylor)
      expect(@vehicle.passengers).to eq([@charlie, @taylor])
    end

    it '10. Vehicle #num_adults' do
      expect(@vehicle).to respond_to(:num_adults).with(0).argument
      jude = Passenger.new({"name" => "Jude", "age" => 20})

      @vehicle.add_passenger(@charlie)
      @vehicle.add_passenger(@taylor)
      @vehicle.add_passenger(jude)
      
      expect(@vehicle.num_adults).to eq(2)
    end
  end
  
  describe 'Iteration 3' do 
    it '11. exists and has attributes' do 
      expect(Park).to respond_to(:new).with(2).argument

      expect(@park).to be_a(Park)
      expect(@park.name).to eq('Yosemite')
      expect(@park.price).to eq(25)
    end

    it '12. can list all vehicles that entered the park' do
      expect(@park.vehicles).to eq([])

      @park.add_vehicle(@vehicle)
      @park.add_vehicle(@vehicle2)

      expect(@park.vehicles).to eq([@vehicle, @vehicle2])
    end

    it '13. can list all passengers that entered the park' do 
      stephen  = Passenger.new({"name" => "Stephen", "age" => 22})
      lucy  = Passenger.new({"name" => "Lucy", "age" => 23})

      @park.add_vehicle(@vehicle)
      @park.add_vehicle(@vehicle2)

      @vehicle.add_passenger(lucy)
      @vehicle.add_passenger(@charlie)

      @vehicle2.add_passenger(@taylor)
      @vehicle2.add_passenger(stephen)

      expect(@park.passengers).to eq([lucy, @charlie, @taylor, stephen])
    end

    it '14. can calculate revenue generated' do
      stephen  = Passenger.new({"name" => "Stephen", "age" => 22})
      lucy  = Passenger.new({"name" => "Lucy", "age" => 23})

      @park.add_vehicle(@vehicle)
      @park.add_vehicle(@vehicle2)

      @vehicle.add_passenger(lucy)
      @vehicle.add_passenger(@charlie)

      @vehicle2.add_passenger(taylor)
      @vehicle2.add_passenger(@stephen)

      expect(@park.revenue).to eq(75)
    end
  end

  describe 'Iteration 4' do 
    it '15. can get a list of all attendees names sorted alphabetically' do 
      stephen  = Passenger.new({"name" => "Stephen", "age" => 22})
      lucy  = Passenger.new({"name" => "Lucy", "age" => 23})

      @park.add_vehicle(@vehicle)
      @park.add_vehicle(@vehicle2)

      @vehicle.add_passenger(lucy)
      @vehicle.add_passenger(@charlie)

      @vehicle2.add_passenger(@taylor)
      @vehicle2.add_passenger(stephen)

      expect(@park.attendees_list).to eq(["Charlie", "Lucy", "Stephen", "Taylor"])
    end

    it '16. can get a list of minors sorted alphabetically' do 
      stephen  = Passenger.new({"name" => "Stephen", "age" => 22})
      lucy  = Passenger.new({"name" => "Lucy", "age" => 23})

      @park.add_vehicle(@vehicle)
      @park.add_vehicle(@vehicle2)

      @vehicle.add_passenger(lucy)
      @vehicle.add_passenger(@charlie)

      @vehicle2.add_passenger(@taylor)
      @vehicle2.add_passenger(stephen)

      expect(@park.minors_list).to eq(["Taylor"])
    end

    it '17. can get a list of adults sorted alphabetically' do 
      stephen  = Passenger.new({"name" => "Stephen", "age" => 22})
      lucy  = Passenger.new({"name" => "Lucy", "age" => 23})

      @park.add_vehicle(@vehicle)
      @park.add_vehicle(@vehicle2)

      @vehicle.add_passenger(lucy)
      @vehicle.add_passenger(@charlie)

      @vehicle2.add_passenger(@taylor)
      @vehicle2.add_passenger(stephen)

      expect(@park.adults_list).to eq(["Charlie", "Lucy", "Stephen"])
    end
  end
end
