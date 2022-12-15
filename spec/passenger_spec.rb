require 'RSpec'
require './lib/passenger'

RSpec.describe Passenger do

  it 'exist' do
    @charlie = Passenger.new({name: "Charlie", age: 18})
    @taylor = Passenger.new({name: "Taylor", age: 12}) 
    
    expect(@charlie).to be_an_instance_of(Passenger)
    expect(@taylor).to be_an_instance_of(Passenger)
  end

  it "has attributes" do
    @charlie = Passenger.new({name: "Charlie", age: 18})
    @taylor = Passenger.new({name: "Taylor", age: 12}) 

    expect(@charlie.name).to eq('Charlie')
    expect(@charlie.age).to eq(18)
  end
end