require './lib/passenger'
# => true

p charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
puts
# => #<Passenger:0x00007fc1ad88b3c0...>

p taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
puts  
# => #<Passenger:0x00007fe0da2cf1b0...>

p charlie.name
puts
# => "Charlie"

p charlie.age
puts
# => 18

p charlie.adult?
puts
# => true

p taylor.adult?
puts
# => false

p charlie.driver?
puts
# => false

p charlie.drive

p charlie.driver?
puts
# => true