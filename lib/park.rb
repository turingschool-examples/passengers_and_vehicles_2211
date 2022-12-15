class Park 
    attr_reader :name, :price, :vehicles
    def initialize(name, price)
        @name = name
        @price = price
        @vehicles = []
    end

    def add_vehicles(vehicle)
        @vehicles << vehicle
    end

    def calculate_revenue(age)
        fam_adults = @vehicles.map do |vehicle|
            vehicle.passengers.select do |passenger|
                passenger.age == age
            end
        end
        fam_adults.flatten.sum
    end
end