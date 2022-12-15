require './lib/passenger'
require './lib/vehicle' 
require './lib/park'

RSpec.describe Park do 
  it 'exists and has attributes' do 
    park = Park.new("Zion National Park", 15.00)

    expect(park).to be_a(Park)
    expect(park.name).to eq("Zion National Park")
    expect(park.admission_price).to eq(15.00)
    expect(park.vehicles).to eq([])
  end

  describe '#add_vehicle' do 
    it 'can add vehicles to the park' do 
      park = Park.new("Zion National Park", 15.00) 

      vehicle_1 = Vehicle.new("2001", "Honda", "Civic") 
      vehicle_2 = Vehicle.new("2005", "Chevrolet", "Aveo") 

      expect(park.vehicles).to eq([])

      park.add_vehicle(vehicle_1)
      park.add_vehicle(vehicle_2)

      expect(park.vehicles).to eq([vehicle_1, vehicle_2])
    end
  end

  describe '#visitors' do 
    it 'can list all the passengers that entered the park' do 
      park = Park.new("Zion National Park", 15.00) 

      vehicle_1 = Vehicle.new("2001", "Honda", "Civic") 
      vehicle_2 = Vehicle.new("2005", "Chevrolet", "Aveo")  

      charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
      jude = Passenger.new({"name" => "Jude", "age" => 20}) 
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      cornelius = Passenger.new({"name" => "Cornelius", "age" => 50}) 
      maud = Passenger.new({"name" => "Maud", "age" => 50}) 
      beatrice = Passenger.new({"name" => "Beatrice", "age" => 10}) 

      vehicle_1.add_passenger(charlie)  
      vehicle_1.add_passenger(jude) 
      vehicle_1.add_passenger(taylor) 

      vehicle_2.add_passenger(cornelius)  
      vehicle_2.add_passenger(maud) 
      vehicle_2.add_passenger(beatrice) 

      expect(vehicle_1.passengers).to eq([charlie, jude, taylor])
      expect(vehicle_2.passengers).to eq([cornelius, maud, beatrice])
      expect(park.vehicles).to eq([])

      park.add_vehicle(vehicle_1)
      park.add_vehicle(vehicle_2)

      expect(park.vehicles).to eq([vehicle_1, vehicle_2])
      expect(park.visitors).to eq([charlie, jude, taylor, cornelius, maud, beatrice])
    end
  end

  describe '#revenue_generated' do 
    it 'calculates revenue generated, admission price per adult' do 
      park = Park.new("Zion National Park", 15.00) 

      vehicle_1 = Vehicle.new("2001", "Honda", "Civic") 
      vehicle_2 = Vehicle.new("2005", "Chevrolet", "Aveo")  

      charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
      jude = Passenger.new({"name" => "Jude", "age" => 20}) 
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      cornelius = Passenger.new({"name" => "Cornelius", "age" => 50}) 
      maud = Passenger.new({"name" => "Maud", "age" => 50}) 
      beatrice = Passenger.new({"name" => "Beatrice", "age" => 10}) 

      vehicle_1.add_passenger(charlie)  
      vehicle_1.add_passenger(jude) 
      vehicle_1.add_passenger(taylor) 

      vehicle_2.add_passenger(cornelius)  
      vehicle_2.add_passenger(maud) 
      vehicle_2.add_passenger(beatrice) 

      park.add_vehicle(vehicle_1)
      park.add_vehicle(vehicle_2)
      
      expect(park.revenue_generated).to eq("$60.00")
    end
  end

  describe '#calculate_revenue' do 
    it 'calcultes the revenue and outputs a string' do 
      park = Park.new("Zion National Park", 15.00) 

      vehicle_1 = Vehicle.new("2001", "Honda", "Civic") 
      vehicle_2 = Vehicle.new("2005", "Chevrolet", "Aveo")  

      charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
      jude = Passenger.new({"name" => "Jude", "age" => 20}) 
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      cornelius = Passenger.new({"name" => "Cornelius", "age" => 50}) 
      maud = Passenger.new({"name" => "Maud", "age" => 50}) 
      beatrice = Passenger.new({"name" => "Beatrice", "age" => 10}) 

      vehicle_1.add_passenger(charlie)  
      vehicle_1.add_passenger(jude) 
      vehicle_1.add_passenger(taylor) 

      vehicle_2.add_passenger(cornelius)  
      vehicle_2.add_passenger(maud) 
      vehicle_2.add_passenger(beatrice) 

      park.add_vehicle(vehicle_1)
      park.add_vehicle(vehicle_2)

      expect(park.calculate_revenue).to eq("60.0")
    end
  end

  describe '#format_revenue' do 
    it 'formats the revenue with trailing zero and dollar sign' do 
        park = Park.new("Zion National Park", 15.00) 

      vehicle_1 = Vehicle.new("2001", "Honda", "Civic") 
      vehicle_2 = Vehicle.new("2005", "Chevrolet", "Aveo")  

      charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
      jude = Passenger.new({"name" => "Jude", "age" => 20}) 
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      cornelius = Passenger.new({"name" => "Cornelius", "age" => 50}) 
      maud = Passenger.new({"name" => "Maud", "age" => 50}) 
      beatrice = Passenger.new({"name" => "Beatrice", "age" => 10}) 

      vehicle_1.add_passenger(charlie)  
      vehicle_1.add_passenger(jude) 
      vehicle_1.add_passenger(taylor) 

      vehicle_2.add_passenger(cornelius)  
      vehicle_2.add_passenger(maud) 
      vehicle_2.add_passenger(beatrice) 

      park.add_vehicle(vehicle_1)
      park.add_vehicle(vehicle_2)

      park.calculate_revenue
      expect(park.format_revenue).to eq("$60.00")
    end
  end
end