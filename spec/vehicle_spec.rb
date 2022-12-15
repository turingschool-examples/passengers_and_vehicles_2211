require './lib/vehicle'
require './lib/passenger'

describe Vehicle do 

  it 'has a year' do
    vehicle = Vehicle.new("2001", "Honda", "Civic")  
    expect(vehicle.year).to eq("2001")
  end

  it 'has a make' do
    vehicle = Vehicle.new("2001", "Honda", "Civic")  
    expect(vehicle.make).to eq("Honda")
  end

  it 'has a model' do
    vehicle = Vehicle.new("2001", "Honda", "Civic")  
    expect(vehicle.model).to eq("Civic")
  end

  it 'can be speeding and not speeding' do
    vehicle = Vehicle.new("2001", "Honda", "Civic")  
    expect(vehicle.speeding?).to be(false)
    vehicle.speed
    expect(vehicle.speeding?).to be(true)
  end

  it 'can have passengers' do
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

  it 'can count adults' do
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    jude = Passenger.new({"name" => "Jude", "age" => 20})  
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
    vehicle.add_passenger(charlie) 
    vehicle.add_passenger(jude)  
    vehicle.add_passenger(taylor)    
    expect(vehicle.num_adults).to eq(2)
  end

end