require 'rspec'
require './lib/passenger'
require './lib/vehicle'
require './lib/national_park'

RSpec.describe NationalPark do
    let(:park) {NationalPark.new("Carlsbad Caverns", 15)}

    it "exists" do
        expect(park).to be_instance_of(NationalPark)
    end

    it "has attributes" do
        expect(park.name).to eq("Carlsbad Caverns")
        expect(park.admission_price).to eq(15)
    end



end