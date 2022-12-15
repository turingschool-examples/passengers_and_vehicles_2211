class NationalPark
    attr_reader :name, 
                :admission_price,
                :vehicles_in_park, 
                :revenue

    def initialize(name, admission_price)
        @name = name
        @admission_price = admission_price
        @vehicles_in_park = []
        @revenue = 0
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

    def charge_adults
        total_numb_adults = []
        
        @vehicles_in_park.each do |each_vehicle|
            total_numb_adults << each_vehicle.num_adults
        end
         
        daily_rev = total_numb_adults.sum * @admission_price 
        @revenue = daily_rev
    end

end