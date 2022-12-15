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

end