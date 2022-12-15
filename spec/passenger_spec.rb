require './lib/passenger'

RSpec.describe Passenger do

    it 'exists' do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        expect(charlie).to be_an_instance_of(Passenger)
    end
end