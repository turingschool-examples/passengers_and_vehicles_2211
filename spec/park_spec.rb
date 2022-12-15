require './lib/passenger'
require './lib/vehicle'
require './lib/park'

RSpec.describe do
	let(:vehicle){Vehicle.new("2001", "Honda", "Civic")}
	let(:charlie){Passenger.new({name: "Charlie", age: 18})}
	let(:taylor){Passenger.new({name: "Taylor", age: 12})}
	let(:jude){Passenger.new({name: "Jude", age: 20})}
	let(:shadypines){Park.new({name: "Shady Pines", admission: 5})}
	let(:trixie){Park.new({name: "Trixie Trail", admission: 8})}
		
	it 'initializes with attributes' do