require './lib/passenger'

RSpec.describe do
	let(:charlie){Passenger.new({name: "Charlie", age: 18})}
	let(:taylor){Passenger.new({name: "Taylor", age: 12})}  
	
		it 'can return passenger attributes' do
			expect(charlie.name).to eq("Charlie")
			expect(charlie.age).to eq(18)
			expect(taylor.age).to eq(12)
			expect(charlie.adult?).to be true
			expect(taylor.adult?).to be false
			expect(charlie.driver?).to be false
			charlie.drive
			expect(charlie.driver?).to be true
		end
	end