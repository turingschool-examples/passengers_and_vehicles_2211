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
end