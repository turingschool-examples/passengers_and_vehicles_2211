class Vehicle
    attr_reader :year, 
                :make, 
                :model,
                :passenger

    def initialize(year, make, model)
        @year = year
        @make = make
        @model = model
        @speeding = false
        @passenger = []
    end

    def speeding
        @speeding = true 
    end

    def speeding?
        @speeding
    end

    def add_passenger(passenger)
        @passenger << passenger 
    end


end