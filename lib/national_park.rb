class NationalPark
    attr_reader :name, :price, :vehicles

    def initialize(name, price)
        @name = name
        @price = price
        @vehicles = []
    end
    
    def add_vehicle(vehicle)
        @vehicles.push(vehicle)
    end

    # def list_all_passengers
    #     @vehicles.find do |vehicle|
    #         vehicle.add_passenger.find_all do |passenger|
    #             passenger
    #         end
    #     end
    # end
end