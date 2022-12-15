require './lib/passenger'
require './lib/vehicle'
require './lib/park'

describe Park do
  let (:park_1) {Park.new('Park Jasmine', 5)}

  it 'exists' do
    expect(park_1).to be_a(Park)
  end

  it 'has attributes' do
    expect(park_1.name).to eq('Park Jasmine')
    expect(park_1.admission_cost).to eq(5)
  end
end