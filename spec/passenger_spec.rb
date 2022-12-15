require 'rspec'
require './lib/passenger'

RSpec.describe Passenger do
    let(:charlie) { Passenger.new({"name" => "Charlie", "age" => 18}) }  
    let(:taylor) { Passenger.new({"name" => "Taylor", "age" => 12}) }

    it "exists" do
        expect(charlie).to be_instance_of(Passenger)
        expect(taylor).to be_instance_of(Passenger)
    end

    it "has atributes" do
        expect(charlie.name).to eq("Charlie")
        expect(taylor.name).to eq("Taylor")
    end


end