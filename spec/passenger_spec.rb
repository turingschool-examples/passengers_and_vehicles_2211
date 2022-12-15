require './lib/passenger'
require 'RSpec'
require 'pry'

RSpec.describe Passenger do
    let(:charlie) { Passenger.new({"name" => "Charlie", "age" => 18}) }
    let(:taylor) { Passenger.new({"name" => "Taylor", "age" => 12}) }
    it 'exists' do
        expect(charlie).to be_an_instance_of(Passenger)
        expect(taylor).to be_an_instance_of(Passenger)
    end

    it 'has attributes' do
        expect(charlie.name).to eq("Charlie")
        expect(charlie.age).to eq(18)
    end

    xit 'determines adult' do
        expect(charlie.adult?).to eq(true)
        expect(taylor.adult?).to eq(false)
    end

    xit 'determines driver' do
        charlie.drive
        expect(charlie.driver?).to eq(true)
    end
end

