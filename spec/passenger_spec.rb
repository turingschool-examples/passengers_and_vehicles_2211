require './lib/passenger'

RSpec.describe Passenger do 
	let(:charlie) { Passenger.new({"name" => "Charlie", "age" => 18}) }
	let(:taylor) { Passenger.new({"name" => "Taylor", "age" => 12}) }

	it "exists" do 
		expect(charlie).to be_an_instance_of(Passenger)
	end

	it "has a name" do 
		expect(charlie.name).to eq("Charlie")
		expect(taylor.name).to eq("Taylor")
	end

	it "has an age" do 
		expect(charlie.age).to eq(18)
		expect(taylor.age).to eq(12)
	end

	it "can be an adult" do 
		expect(charlie.adult?).to eq(true)
		expect(taylor.adult?).to eq(false)
	end

	it "is not the driver by default" do 
		expect(charlie.driver?).to be(false)
		charlie.drive
		expect(charlie.driver?).to be(true)
	end
end