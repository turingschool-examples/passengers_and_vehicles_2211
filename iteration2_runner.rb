require './lib/vehicle'
# => true
require './lib/passenger'
# => true
p vehicle = Vehicle.new("2001", "Honda", "Civic") 
puts   
# => #<Vehicle:0x00007fe0da9c63d8...>

p vehicle.year
puts
# => "2001"

p vehicle.make
puts
# => "Honda"

p vehicle.model
puts
# => "Civic"

p vehicle.speeding?
puts
# => false

vehicle.speed
p vehicle.speeding?
puts
# => true

p vehicle.passengers
puts
# => []

p charlie = Passenger.new({"name" => "Charlie", "age" => 18})
puts    
# => #<Passenger:0x00007fe0da1ec450...>

p jude = Passenger.new({"name" => "Jude", "age" => 20})   
puts 
# => #<Passenger:0x00007fe0da2730e0...>

p taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
puts
# => #<Passenger:0x00007fe0da2cf1b0...>

vehicle.add_passenger(charlie)    
vehicle.add_passenger(jude)    
vehicle.add_passenger(taylor)    
p vehicle.passengers
puts
# => [#<Passenger:0x00007fe0da1ec450...>, #<Passenger:0x00007fe0da2730e0...>, #<Passenger:0x00007fe0da2cf1b0...>]

p vehicle.num_adults
puts
# => 2