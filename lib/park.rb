class Park
    attr_reader :name, 
                :vehicles_in_park, 
                :passengers_in_park, 
                :revenue,
                :entry_fee

    def initialize(name)
        @name = name
        @vehicles_in_park = []
        @passengers_in_park = []
        @revenue = 0
        @entry_fee = 15
    end

    def enter_park(vehicle)
        @vehicles_in_park << vehicle
    end

    def passenger_enter(passenger)
        @passengers_in_park << passenger
    end

    def entry_fee
        @revenue += 15
    end

    def charge_fee
        currently_in_park = @passengers_in_park.count
        currently_in_park * entry_fee
    end

end