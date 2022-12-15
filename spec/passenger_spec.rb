require 'rspec'
require './lib/passenger'

RSpec.describe Passenger do 
    before(:each) do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})\
    end

    it "it exists" do 
        expect(@charlie).to be_an_instance_of(Passenger)
    end

    it "has name and age" do
        expect(@charlie.name).to eq("Charlie")
        expect(@charlie.age).to eq(18)
    end

    xit "adult?" do
        expect(@charlie.adult?).to eq(true)
        expect(@taylor.adult?).to eq(false)
    end

    xit "drive and driver?" do
        expect(@charlie.driver?).to eq(false)
        charlie.drive
        expect(@charlie.driver?).to eq(true)
    end
end