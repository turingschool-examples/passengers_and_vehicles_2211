require './lib/passenger'

describe Passenger do

  let(:charlie) {Passenger.new({"name" => "Charlie", "age" => 18})}
  let(:taylor) {Passenger.new({"name" => "Taylor", "age" => 12})}

  describe 'initialize' do

    it 'it exists and has attributes' do

      expect(charlie).to be_a(Passenger)
      expect(charlie.name).to eq("Charlie")
      expect(charlie.age).to eq(18)
    end

		it '#adult?' do

      expect(charlie.adult?).to eq(true)
      expect(taylor.adult?).to eq(false)
    end

	end

end