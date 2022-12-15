require './lib/passenger'
require './lib/vehicle'
require './lib/national_park'

RSpec.describe NationalPark do 
  it 'will exist and have attributes' do 
    park = NationalPark.new("Grand Canyon", 30)

    expect(park).to be_a(NationalPark)
    expect(park.name).to eq("Grand Canyon")
    expect(park.admission_cost).to eq(30)
  end
end