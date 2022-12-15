class NationalPark
    attr_reader :name, 
                :admission_price,
                :vehicles_in_park

    def initialize(name, admission_price)
        @name = name
        @admission_price = admission_price
        @vehicles_in_park = []
        @revenue_generated = 0
    end

    def enter(vehicle)
        @vehicles_in_park << vehicle
    end

    def passengers_in_park
        all_passengers_in_park = []
        @vehicles_in_park.each do |vehicle|
            all_passengers_in_park << vehicle.passengers
        end
        all_passengers_in_park.flatten
    end


end