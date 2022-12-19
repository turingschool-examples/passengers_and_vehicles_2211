class Intersection
    attr_reader :street1, 
                :street2,
                :passed_cars
    
    def initialize(street1, street2)
        @street1 = street1
        @street2 = street2
        @passed_cars = []
    end

    def pass(vehicle)
        @passed_cars << vehicle
    end

    def speeding_cars
        @passed_cars.find_all do |car|
            car.speeding?
        end

    end

    def speeding_drivers
        speeding_cars.find_all do |car|
            car.find_all do |passenger|
                passenger.driver? == true
            end
        end
        
    end

end