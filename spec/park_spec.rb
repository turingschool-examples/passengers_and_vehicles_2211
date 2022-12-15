require './lib/vehicle'
require './lib/passenger'
require './lib/park'

RSpec.describe do 
    let(:park) { Park.new("Rocky Mountain National Park", 20) }
    it "exists" do 
        expect(park).to be_an_instance_of(Park)
    end
end