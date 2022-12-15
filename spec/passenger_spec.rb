require './lib/passenger'

describe Passenger do
  let(:charlie) {Passenger.new({'name' => 'Charlie', 'age' => 18})}
  let(:taylor) {Passenger.new({'name' => 'Taylor', 'age' => 12})}

  it 'exists' do
    expect(charlie).to be_a(Passenger)
    expect(taylor).to be_a(Passenger)
  end
    
  it'has attributes' do
    expect(charlie.name).to eq('Charlie')
    expect(charlie.age).to eq (18)
  end

  it 'can determine if the passenger is an adult' do
    expect(charlie.adult?).to be true
    expect(taylor.adult?).to be false
  end

  it 'is not a driver by default' do
    expect(charlie.driver?).to be false
  end

  it 'becomes a driver when they drive' do
    charlie.drive
    
    expect(charlie.driver?).to be true
  end 
end
 