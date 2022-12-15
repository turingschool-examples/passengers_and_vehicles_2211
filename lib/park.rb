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
end