require './lib/passenger'
require './lib/vehicle'

class Park
    attr_reader :name,
                :admission,
                :vehicles,
                :vehicle,
                :passengers

    def initialize(attributes)
        @name = attributes["name"]
        @admission = attributes["admission"]
        @vehicles = []
        @passengers = []
    end

    def add_vehicle(vehicle)
        @vehicles << vehicle
    end

    def add_passenger(passenger)
        @passengers << passenger
    end

    def revenue
        num_adults = @passengers.count { |passenger| passenger.age >= 18 }
        num_adults * @admission
    end

end