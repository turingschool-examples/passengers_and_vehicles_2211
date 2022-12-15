class Park
    attr_reader :name, :admission, :guest_vehicles

    def initialize(name, admission)
        @name = name
        @admission = admission
        @guest_vehicles = []
    end

    def new_guest(vehicle)
        @guest_vehicles << vehicle
    end

    def list_all_passengers
        passengers = []
        @guest_vehicles.map do |vehicle|
            vehicle.passengers.map do |passenger|
                passengers << passenger.name
            end
        end
        passengers
    end

end