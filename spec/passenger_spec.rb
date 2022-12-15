require './lib/passenger'

RSpec.describe Passenger do

    it 'exists' do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 

        expect(charlie).to be_an_instance_of(Passenger)
    end
    
    it 'has a name and age' do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})

        expect(charlie.name).to eq("Charlie")
        expect(charlie.age).to eq(18)
    end

    it 'can test if an adult' do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})

        expect(charlie.adult?).to be(true)
        expect(taylor.adult?).to be(false)
    end

    it 'can test for driver' do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})

        expect(charlie.driver?).to be(false)

        charlie.drive

        expect(charlie.driver?).to be(true)
    end
end