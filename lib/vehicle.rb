class Vehicle
    attr_reader :year, :make, :model

    def initialize(year, make, model)
        @year = year
        @make = make
        @model = model
        @speeding = false
        @passengers = []
    end

    def speed
        @speeding = true
    end

    def speeding?
        @speeding
    end

    def passengers
        @passengers
    end

    def add_passenger(passenger)
        @passengers << passenger
    end

    def num_adults
        adults = []
        @passengers.each do |passenger|
            adults << passenger if passenger.age >= 18
        end
        adults.length
    end

end