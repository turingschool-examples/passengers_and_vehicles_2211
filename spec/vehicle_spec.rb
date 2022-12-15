require './lib/passenger'
require './lib/vehicle'

RSpec.describe Vehicle do 
  it 'will exist and have attributes' do 
    vehicle = Vehicle.new("2001", "Honda", "Civic")  

    expect(vehicle.year).to eq("2001")
    expect(vehicle.make).to eq("Honda")
    expect(vehicle.model).to eq("Civic")
  end

  it 'will check to see if vehicle was speeding' do 
    vehicle = Vehicle.new("2001", "Honda", "Civic") \

    expect(vehicle.speeding?).to eq(false)

    vehicle.speeding

    expect(vehicle.speeding?).to eq(true)
  end

  it 'will start of with no passengers byt can add passengers' do 
    vehicle = Vehicle.new("2001", "Honda", "Civic")  

    expect(vehicle.passengers).to eq([])

    charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
    jude = Passenger.new({"name" => "Jude", "age" => 20}) 
    taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 

    vehicle.add_passenger(charlie)
    vehicle.add_passenger(jude)    
    vehicle.add_passenger(taylor)  

    expect(vehicle.passengers).to eq([charlie, jude, taylor])
  end
end