require './lib/passenger'
require './lib/vehicle'
require './lib/park'

RSpec.describe Park do
  context "happpy paths" do
  before(:each) do 

    @vehicle = Vehicle.new("2001", "Honda", "Civic")
    @minivan = Vehicle.new("1994", "Mitsubish", "Oldie")
    @echo = Vehicle.new("2004", "Toyota", "Echo")

    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    @jude = Passenger.new({"name" => "Jude", "age" => 20}) 

    @malena = Passenger.new({"name" => "Malena", "age" => 26})
    @hady = Passenger.new({"name" => "Hady", "age" => 32})
    @atena = Passenger.new({"name" => "Atena", "age" => 4})

    @diego = Passenger.new({"name" => "Diego", "age" => 34})
    @babydiego = Passenger.new({"name" => "BabyDiego", "age" => 1})

    @vehicle.add_passenger(@charlie)
    @vehicle.add_passenger(@taylor)
    @vehicle.add_passenger(@jude)

    @minivan.add_passenger(@malena)
    @minivan.add_passenger(@hady)
    @minivan.add_passenger(@atena)

    @echo.add_passenger(@babydiego)
    @echo.add_passenger(@diego)

    @chimborazo = Park.new("Chimborazo Volcano Park", 25)

  end

  it "is a Park object " do 
  
    expect(@chimborazo).to be_an_instance_of(Park)
  
  end 

  it "at opening the park has no vehicles" do

   expect(@chimborazo.vehicles_in_park).to be_empty

  end 

  it "the park keeps track as it admits vehicles in" do 

    @chimborazo.admit_vehicle(@vehicle)
    @chimborazo.admit_vehicle(@minivan)

  expect(@chimborazo.vehicles_in_park).to include(@vehicle, @minivan)

  end 
  # Was not sure if you wanted to list by name or object so I did both-- different methods 
  it "the park also keeps track of which passengers enter in these vehicles" do 
    @chimborazo.admit_vehicle(@vehicle)
    @chimborazo.admit_vehicle(@minivan)

    expect(@chimborazo.patrons_in_park).to include(@charlie, @taylor, @jude, @malena, @hady, @atena)
  end 

  it "changes dynamically vased on the vehicles that enter the park" do 
    @chimborazo.admit_vehicle(@vehicle)
    @chimborazo.admit_vehicle(@echo)

    expect(@chimborazo.patrons_in_park).to include(@charlie, @taylor, @jude, @babydiego, @diego)
  end 

  it "can list those patrons by name" do 
    @chimborazo.admit_vehicle(@vehicle)
    @chimborazo.admit_vehicle(@echo)

    expect(@chimborazo.patrons_by_name).to include("Charlie", "Taylor", "Jude", "BabyDiego", "Diego")
  end 

  it "can calculate the revenue generated" do 
    @chimborazo.admit_vehicle(@vehicle)
    @chimborazo.admit_vehicle(@echo)

    expect(@chimborazo.revenue_generated).to eq(75)

  end 

  it "the revenue generated changes based on the number of people that enter dynamically" do 
    @chimborazo.admit_vehicle(@vehicle)
    @chimborazo.admit_vehicle(@echo)
    @chimborazo.admit_vehicle(@minivan)

    expect(@chimborazo.revenue_generated).to eq(125)

  end 

  it "different parks charge different amounts" do 

    @cotopaxi = Park.new("Cotopaxi Volcano Park", 83)

    @cotopaxi.admit_vehicle(@vehicle)
    @cotopaxi.admit_vehicle(@echo)

    expect(@cotopaxi.revenue_generated).to eq(249)
  end 

  it "can generate an alphabetic list of all patrons in the park" do 

    @chimborazo.admit_vehicle(@vehicle)
    @chimborazo.admit_vehicle(@echo)
    @chimborazo.admit_vehicle(@minivan)
  
    expect(@chimborazo.alphabetic_patrons_in_park).to eq(["Atena", "BabyDiego", "Charlie", "Diego", "Hady", "Jude", "Malena", "Taylor"]) 
  end 

  it "can generate an alphabetic list of all minors in the park" do 

    @chimborazo.admit_vehicle(@vehicle)
    @chimborazo.admit_vehicle(@echo)
    @chimborazo.admit_vehicle(@minivan)
  
    expect(@chimborazo.minors_in_park).to eq(["Atena", "BabyDiego", "Taylor"]) 
  end 

  it "can generate an alphabetic list of all adults in the park" do 

    @chimborazo.admit_vehicle(@vehicle)
    @chimborazo.admit_vehicle(@echo)
    @chimborazo.admit_vehicle(@minivan)
  
    expect(@chimborazo.adults_in_park).to eq(["Charlie", "Diego", "Hady", "Jude", "Malena"]) 
  end 

  it "can provide all of this information by running one method" do 

    @chimborazo.admit_vehicle(@vehicle)
    @chimborazo.admit_vehicle(@echo)
    @chimborazo.admit_vehicle(@minivan)

    expect(@chimborazo.full_functionality).to eq({
      "Everyone"=>["Atena", "BabyDiego", "Charlie", "Diego", "Hady", "Jude", "Malena", "Taylor"], 
      "Minors"=>["Atena", "BabyDiego", "Taylor"], 
      "Adults"=>["Charlie", "Diego", "Hady", "Jude", "Malena"]
      })


  end 
end
end 