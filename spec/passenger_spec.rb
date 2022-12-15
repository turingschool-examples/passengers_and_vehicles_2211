require './lib/passenger'

describe Passenger do
  let(:charlie) {Passenger.new({'name' => 'Charlie', 'age' => 18})}
  let(:taylor) {Passenger.new({'name' => 'Taylor', 'age' => 12})}

  it 'has attributes' do
    expect(charlie).to be_a(Passenger)
    expect(taylor).to be_a(Passenger)

    expect(charlie.name).to eq('Charlie')
    expect(charlie.age).to eq (18)
  end 
end