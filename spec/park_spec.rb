require './lib/passenger'
require './lib/vehicle'
require './lib/park'

RSpec.describe do
	let(:honda){Vehicle.new("2001", "Honda", "Civic")}
	let(:toyota){Vehicle.new("2006", "Toyota", "Corolla")}
	let(:chevy){Vehicle.new("2021", "Chevy", "Blazer")}
	let(:charlie){Passenger.new({name: "Charlie", age: 18})}
	let(:taylor){Passenger.new({name: "Taylor", age: 12})}
	let(:brad){Passenger.new({name: "Brad", age: 33})}
	let(:corey){Passenger.new({name: "Corey", age: 16})}
	let(:anhnhi){Passenger.new({name: "Anhnhi", age: 30})}
	let(:jude){Passenger.new({name: "Jude", age: 20})}
	let(:shadypines){Park.new({name: "Shady Pines", admission: 5})}
	let(:trixie){Park.new({name: "Trixie Trail", admission: 8})}
		
	it 'initializes with attributes' do
		expect(shadypines).to be_an_instance_of(Park)
		expect(shadypines.name).to eq("Shady Pines")
		expect(shadypines.admission).to eq(5)
	end

	it 'allows vehicles to enter' do
		shadypines.vehicle_enter(honda)
		shadypines.vehicle_enter(chevy)
		trixie.vehicle_enter(toyota)
		expect(shadypines.vehicles).to eq([honda, chevy])
		expect(trixie.vehicles).to eq([toyota])
	end

	it 'adds revenue' do
		shadypines.vehicle_enter(honda)
		shadypines.vehicle_enter(chevy)
		trixie.vehicle_enter(toyota)
		expect(shadypines.revenue).to eq(10)
		expect(trixie.revenue).to eq(8)
	end

	it 'lists patrons alphabetically' do
		honda.add_passenger(charlie)
		honda.add_passenger(jude)
		expect(honda.passengers).to eq([charlie, jude])
		toyota.add_passenger(taylor)
		expect(toyota.passengers).to eq([taylor])
		chevy.add_passenger(corey)
		chevy.add_passenger(brad)
		chevy.add_passenger(anhnhi)
		expect(chevy.passengers).to eq([corey, brad, anhnhi])
		shadypines.vehicle_enter(honda)
		shadypines.vehicle_enter(toyota)
		trixie.vehicle_enter(chevy)
		expect(shadypines.list_patrons).to eq([charlie, jude, taylor])
		expect(trixie.list_patrons).to eq([anhnhi, brad, corey])
	end

	it 'lists minors and adults alphabetically'
end
