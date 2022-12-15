require './lib/park'
require './lib/passenger'
require './lib/vehicle'
require 'rspec'
require 'pry'

RSpec.describe Park do
  it 'is a park and has attributes' do
    canyonlands = Park.new('Canyonlands', 20)
    
    expect(canyonlands.name).to eq('Canyonlands')
    expect(canyonlands.price).to eq(20)
  end
end