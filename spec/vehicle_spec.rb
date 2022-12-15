require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do
  vehicle = Vehicle.new("2001", "Honda", "Civic")    
  it 'exists' do

    expect(vehicle).to be_an_instance_of(Vehicle)
  end
end