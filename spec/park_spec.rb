require './lib/vehicle'
require './lib/passenger'
require './lib/park'

describe Park do
  before(:each) do
    @park = Park.new({name: "Yellowstone", price_dollars: 20})
  end

  it 'exists' do
    expect(@park).to be_a(Park)
  end
  
  it 'can list vehicles' do
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
    expect(@park.vehicles).to eq("Honda")   
  end

  xit 'can add passengers' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    jude = Passenger.new({"name" => "Jude", "age" => 20})    
    taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    @vehicle.add_passenger(@charlie)    
    @vehicle.add_passenger(@jude) 
    @vehicle.add_passenger(@taylor)  
    expect(@park.passengers).to eq([@charlie, @jude, @taylor])
  end

  xit 'can calculate revenue' do
    expect(park.revenue).to eq(40)
  end

end