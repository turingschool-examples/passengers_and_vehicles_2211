require 'RSpec'
require './lib/vehicle'
require './lib/passenger'
require './lib/park'

RSpec.describe Park do
  let(:park) { Park.new("Denali", 30) }
  it 'exists' do

    expect(park).to be_an_instance_of(Park)
  end

  it 'has attributes' do

    expect(park.name).to eq("Denali")
    expect(park.price).to eq(30)
  end
end