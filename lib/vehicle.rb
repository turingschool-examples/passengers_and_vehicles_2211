class Vehicle
    attr_reader :year, :make, :model, :passengers
    def initialize(year, make, model)
        @year = year
        @make = make
        @model = model
        @speeding = false
        @passengers = []
        @adult = 0
    end

    def speeding?
        @speeding
    end

    def speed
        @speeding = true
    end

    def add_passengers(passenger)
        @passengers << passenger
    end

    def number_of_adults      
        @passengers.pop
        @passengers.count
    end
end