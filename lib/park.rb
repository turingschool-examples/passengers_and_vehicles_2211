class Park
    attr_reader :name, :price, :vehicles

    def initialize(name, price)
        @name = name
        @price = price
        @vehicles = []
    end

    def track_vehicle(vehicle)
        @vehicles << vehicle
    end

    def park_goers
        @vehicles.map do |vehicle|
            vehicle.passengers
        end.flatten
    end

    def revenue
        park_goers.length * @price
    end

    def patrons
        park_goers.map do |passenger|
            passenger.name
        end.sort
    end

    def adults
        adults = park_goers.find_all do |passenger|
            passenger.adult?
        end

        adults.map do |adult|
            adult.name
        end.sort
    end

    def minors
        minors = park_goers.find_all do |passenger|
            !passenger.adult?
        end

        minors.map do |minor|
            minor.name
        end.sort
    end

end