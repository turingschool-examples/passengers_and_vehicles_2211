class NationalPark
    attr_reader :name, 
                :admission_price,
                :vehicles_in_park

    def initialize(name, admission_price)
        @name = name
        @admission_price = admission_price
        @vehicles_in_park = []
    end

    def enter(vehicle)
        @vehicles_in_park << vehicle
    end

end