class Park
    attr_reader :name, :vehicles_in_park

    def initialize(name)
        @name = name
        @vehicles_in_park = []
    end

    def enter_park(vehicle)
        @vehicles_in_park << vehicle
    end

end