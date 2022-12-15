require './lib/park'
require './lib/passenger'
require './lib/vehicle'
require 'rspec'
require 'pry'

RSpec.describe Park do
  it 'is a park and has attributes' do
    yosemite = Park('Yosemite', 120)
    
    expect(yosemite.name).to be("Yosemite")
    expect(yosemite.price).be(120)
  end
end