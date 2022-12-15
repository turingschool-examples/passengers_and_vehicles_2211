require './lib/passenger'

class Vehicle
    attr_reader :year,
                :make,
                :model,
                :speed_check,
                :passengers

    def initialize(year, make, model)
        @year = year
        @make = make
        @model = model
        @speed_check = false
        @passengers = []
    end

    def speeding?
        return speed_check
    end

    def speed
        @speed_check = true
    end

    def add_passenger(passenger)
        @passengers << passenger
    end

    def num_adults
        @passengers.count { |passenger| passenger.age >= 18 }
    end
end