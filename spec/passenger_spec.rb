require './lib/passenger'

describe Passenger do
    let(:charlie) {Passenger.new({"name" => "Charlie", "age" => 18})}
    let(:taylor) {Passenger.new({"name" => "Taylor", "age" => 12})}

    it 'can initialize new instance' do
        expect(charlie).to be_an_instance_of(Passenger)
        expect(taylor).to be_an_instance_of(Passenger)
    end

    it 'has readable attributes' do
        expect(charlie.name).to eq("Charlie")
        expect(charlie.age).to eq(18)
    end

    xit 'can determine adult' do
        expect(charlie.adult?).to be true
        expect(taylor.adult?).to be false
    end

    xit 'can determine driver' do
        expect(charlie.driver?).to be false
        
        charlie.drive

        expect(charlie.driver?).to be true

    end
end