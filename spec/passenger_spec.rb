require './lib/passenger'

RSpec.describe Passenger do 
    before(:each) do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    end

    it "exists" do
        expect(@charlie).to be_an_instance_of(Passenger)
    end
end