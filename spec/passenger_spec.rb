
require 'rspec'
require './lib/passenger'

RSpec.describe Passenger do
    before(:each) do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    end

    it "exists" do
        expect(@charlie).to be_instance_of(Passenger)
        expect(@taylor).to be_instance_of(Passenger)
    end

    it "has attributes" do
        expect(@charlie.name).to eq("Charlie")
        expect(@charlie.age).to eq(18)
        expect(@charlie.adult?).
        expect(@taylor.name).to eq("Taylor")
        expect(@taylor.age).to eq(12)
    end
    


end