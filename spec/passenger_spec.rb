require "rspec"
require "./lib/passenger"

RSpec.describe Passenger do
    describe 'Iteration 1' do
        it "#exists" do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})

            expect(charlie).to be_an_instance_of(Passenger)
            expect(taylor).to be_an_instance_of(Passenger)
        end

        it "can read attributes" do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})

            expect(charlie.name).to eq("Charlie")
            expect(charlie.age).to eq(18)
        end

        it "can correctly pass the adult? method" do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})

            expect(charlie.adult?).to eq(true)
            expect(taylor.adult?).to eq(false)
        end

        it "can affect attributes with method drive and check with driver? method" do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})

            expect(charlie.driver?).to eq(false)

            charlie.drive

            expect(charlie.driver?).to eq(true)
        end
    end
end