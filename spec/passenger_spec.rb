require 'RSpec'
require './lib/passenger'

RSpec.describe Passenger do
  let(:charlie) { Passenger.new({name: "Charlie", age: 18}) }
  let(:taylor) { Passenger.new({name: "Taylor", age: 12}) }

  it 'exist' do
    
    expect(charlie).to be_an_instance_of(Passenger)
    expect(taylor).to be_an_instance_of(Passenger)
  end

  it "has attributes" do

    expect(charlie.name).to eq('Charlie')
    expect(charlie.age).to eq(18)
  end

  it "can tell if an adult" do

    expect(charlie.adult?).to be true
    expect(taylor.adult?).to be false
  end

  it "can show who can drive" do

    expect(charlie.driver?).to be false
    
    charlie.drive

    expect(charlie.driver?).to be true
  end
end