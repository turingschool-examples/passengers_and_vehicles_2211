require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do
  vehicle = Vehicle.new("2001", "Honda", "Civic")    
  it 'exists' do

    expect(vehicle).to be_an_instance_of(Vehicle)
  end

  it 'has attributes' do
    vehicle = Vehicle.new("2001", "Honda", "Civic")    

    expect(vehicle.year).to eq("2001")
    expect(vehicle.make).to eq("Honda")
    expect(vehicle.model).to eq("Civic")
  end

  it 'starts not speeding' do
  vehicle = Vehicle.new("2001", "Honda", "Civic")    

    expect(vehicle.speeding?).to eq(false)
  end

  it 'can speed' do
    vehicle = Vehicle.new("2001", "Honda", "Civic")    
    vehicle.speed

    expect(vehicle.speeding?).to eq(true)
  end

  it 'starts with no passengers' do
    vehicle = Vehicle.new("2001", "Honda", "Civic")    

    expect(vehicle.passengers).to eq ([])

  end

  it 'can add passengers' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})    

    vehicle.add_passenger(charlie)    
    vehicle.add_passenger(jude)    
    vehicle.add_passenger(taylor)    

    expect(vehicle.passengers).to eq([charlie, jude, taylor])
  end

  it 'contains adults' do
    vehicle = Vehicle.new("2001", "Honda", "Civic")    
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
    
    expect(vehicle.num_adults).to eq(2)
  end
end