require './lib/park'

RSpec.describe Park do
  let(:park) {Park.new('Olympic National Park', 11.50) }
  let(:vehicle1) { Vehicle.new('2001', 'Honda', 'Civic') }
  let(:vehicle2) { Vehicle.new('2016', 'Subaru', 'Forester') }
  let(:vehicle3) { Vehicle.new('2006', 'Toyota', 'Corolla') }
  let(:taylor) { Passenger.new({'name' => 'Taylor', 'age' => 12}) }
  let(:charlie) { Passenger.new({'name' => 'Charlie', 'age' => 18}) }  
  let(:jude) {Passenger.new({'name' => 'Jude', 'age' => 20}) }
  let(:isiah) { Passenger.new({'name' => 'Isiah', 'age' => 15}) }
  let(:valorie) { Passenger.new({'name' => 'Valorie', 'age' => 25}) }  
  let(:ulric) {Passenger.new({'name' => 'Ulric', 'age' => 10}) }

  context 'Iteration 3' do
    it '1. exists' do
      expect(park).to be_a(Park)
    end

    it '2. has readable attributes' do
      expect(park.name).to eq('Olympic National Park')
      expect(park.admission).to eq(11.50)
    end

    it '3. can list all vehicles that have entered it' do
      require 'pry'; binding.pry
    end
  end
end