require 'rspec'
require './lib/passenger'
require './lib/vehicle'
require './lib/national_park'

RSpec.describe NationalPark do
    let(:park) {NationalPark.new("White Sands")}

    it "exists" do
        expect(park).to be_instance_of(NationalPark)
    end


end