require './lib/passenger'
require './lib/vehicle' 
require './lib/park'

RSpec.describe Park do 
  it 'exists and has attributes' do 
    park = Park.new("Zion National Park", 15.00)

    expect(park).to be_a(Park)
    expect(park.name).to eq("Zion National Park")
    expect(park.admission_price).to eq(15.00)
    expect(park.vehicles).to eq([])
  end
end