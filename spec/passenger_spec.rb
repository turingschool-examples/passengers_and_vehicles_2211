require './lib/passenger'

RSpec.describe Passenger do
    let(:charlie) { Passenger.new({"name" => "Charlie", "age" => 18})}
    let(:taylor) {Passenger.new({"name" => "Taylor", "age" => 12})}
    it 'has a name' do
        expect(charlie.name).to eq("Charlie")
    end

    it 'has an age to integer' do
        expect(charlie.age).to eq(18)
    end
    
    it "can be an adult or not" do
        expect(charlie.adult?).to eq(true)
        expect(taylor.adult?).to eq(false)
    end

    it 'can be a driver' do
        expect(charlie.driver?).to eq(false)
        charlie.drive
        expect(charlie.driver?).to eq(true)
    end


end