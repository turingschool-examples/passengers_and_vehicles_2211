require './lib/passenger'
require './lib/vehicle'
require 'rspec'
require 'pry'

RSpec.describe Vehicle do
  it 'is a Vehicle and has attributes' do
    vehicle = Vehicle.new("2001", "Honda", "Civic")

    expect(vehicle.year).to eq("2001")
    expect(vehicle.make).to eq("Honda")
    expect(vehicle.model).to eq("Civic")
  end

  it 'can check if the vehicle is speeding' do
    vehicle = Vehicle.new("2001", "Honda", "Civic")

    expect(vehicle.speeding?).to be false
    vehicle.speed
    expect(vehicle.speeding?).to be true
  end
end