class Park
    attr_reader :name,
                :admission_price,
                :vehicles_in_park

    def initialize(name, admission)
        @name = name
        @admission_price = admission
        @vehicles_in_park = []
    end

    def add_vehicle(vehicle)
        @vehicles_in_park << vehicle
    end
end