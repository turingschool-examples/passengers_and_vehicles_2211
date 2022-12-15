class Vehicle
    attr_reader :year, 
                :make, 
                :model, 
                :speeding, 
                :passengers

    def initialize(year, make, model)
        @year = year.to_i
        @make = make.to_s
        @model = model.to_s
        @speeding = false
        @passengers = []
    end

    def speed
        @speeding = true
    end

    def speeding?
        @speeding
    end

    def add_passenger(passenger)
        @passengers << passenger
    end

end
