require 'rspec'
require './lib/passenger'

RSpec.describe Passenger do
    let(:charlie) { Passenger.new({"name" => "Charlie", "age" => 18}) }  
    let(:taylor) { Passenger.new({"name" => "Taylor", "age" => 12}) }

    it "exists" do
        expect(charlie).to be_instance_of(Passenger)
        expect(taylor).to be_instance_of(Passenger)
    end

    it "has attributes" do
        expect(charlie.name).to eq("Charlie")
        expect(charlie.age).to eq(18)
    end

    it "can determine if a passenger is an adult" do
        expect(charlie.adult?).to eq(true)
        expect(taylor.adult?).to eq(false)
    end

    it "can determine who can drive" do
        expect(charlie.driver?).to eq(false)

        charlie.drive

        expect(charlie.driver?).to eq(true)
    end

end